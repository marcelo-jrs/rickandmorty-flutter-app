// characters_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/view_model/character/character_provider.dart';
import 'package:rickandmorty/view_model/theme_provider.dart';
import 'package:rickandmorty/enums/theme_enums.dart';
import 'package:rickandmorty/widgets/character/character_card.dart';

class CharactersScreen extends ConsumerWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);
    final characterState = ref.watch(charactersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rick and Morty Characters"),
        actions: [
          IconButton(
            onPressed: () async {
              await ref.read(themeProvider.notifier).toggleTheme();
            },
            icon: Icon(
              themeState == ThemeEnums.dark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, WidgetRef ref, child) {
          if (characterState.isLoading && characterState.charactersList.isEmpty) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (characterState.fetchCharactersError.isNotEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    characterState.fetchCharactersError,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => ref.read(charactersProvider.notifier).getCharacters(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          return NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollInfo) {
              if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent &&
                  !characterState.isLoading &&
                  characterState.hasMore) {
                ref.read(charactersProvider.notifier).getCharacters();
                return true;
              }
              return false;
            },
            child: ListView.builder(
              itemCount: characterState.charactersList.length + (characterState.hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                // Load more indicator at the end
                if (index == characterState.charactersList.length) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final character = characterState.charactersList[index];
                return CharacterCard(character: character);
              },
            ),
          );
        },
      ),
    );
  }
}
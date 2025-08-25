import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/view_model/character/character_provider.dart';
import 'package:rickandmorty/view_model/theme_provider.dart';
import 'package:rickandmorty/enums/theme_enums.dart';
import 'package:rickandmorty/widgets/character/character_card.dart';
import 'package:rickandmorty/widgets/search_bar.dart';

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
      body: Column(
        children: [
          const SearchBarWidget(),
          Expanded(
            child: Consumer(
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
                          onPressed: () => ref.read(charactersProvider.notifier).getCharacters(reset: true),
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                } else if (characterState.searchQuery.isNotEmpty && characterState.charactersList.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'No characters found',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Try a different search term',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () => ref.read(charactersProvider.notifier).clearSearch(),
                          child: const Text('Clear Search'),
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
          ),
        ],
      ),
    );
  }
}
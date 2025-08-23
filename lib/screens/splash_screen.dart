// splash_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_statemanagements/screens/characters_screen.dart';
import 'package:mvvm_statemanagements/service/init_getit.dart';
import 'package:mvvm_statemanagements/service/navigation_service.dart';
import 'package:mvvm_statemanagements/view_model/character/character_provider.dart';
import 'package:mvvm_statemanagements/widgets/my_error_widget.dart';

final initializationProvider = FutureProvider.autoDispose<void>((ref) async {
  ref.keepAlive();
  await Future.microtask(() async {
    await ref.read(charactersProvider.notifier).getCharacters();
  });
});

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initWatch = ref.watch(initializationProvider);
    return Scaffold(
      body: initWatch.when(
        loading: () { 
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator.adaptive(),
                SizedBox(height: 20),
                Text(
                  'Loading Characters...',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        }, 
        error: (error, _) {
          debugPrint("❌ SplashScreen error: $error");
          return MyErrorWidget(
            errorText: error.toString(),
            retryFunction: () => ref.refresh(initializationProvider),
          );
        }, 
        data: (_) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            getIt<NavigationService>().navigateReplace(const CharactersScreen());
          });
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
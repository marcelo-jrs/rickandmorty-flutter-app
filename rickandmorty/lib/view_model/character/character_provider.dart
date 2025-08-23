// character_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/models/character_model.dart';
import 'package:rickandmorty/view_model/character/character_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rickandmorty/repository/character_repo.dart';
import 'package:rickandmorty/service/init_getit.dart';

part 'character_provider.g.dart';

@Riverpod(keepAlive: true)
class Characters extends _$Characters {
  final CharacterRepository _characterRepository = getIt<CharacterRepository>();

  @override
  CharacterState build() {
    return CharacterState();
  }

  Future<void> getCharacters() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);
    try {
      final response = await _characterRepository.fetchCharacters(page: state.currentPage);
      state = state.copyWith(
        charactersList: [...state.charactersList, ...response.results],
        currentPage: state.currentPage + 1,
        isLoading: false,
        fetchCharactersError: "",
        hasMore: response.info.next != null,
        info: response.info,
      );
    } catch (e) {
      state = state.copyWith(fetchCharactersError: e.toString(), isLoading: false);
      rethrow;
    }
  }
}

@riverpod
CharacterModel currentCharacter(Ref ref, int index) {
  final characterState = ref.watch(charactersProvider);
  return characterState.charactersList[index];
}
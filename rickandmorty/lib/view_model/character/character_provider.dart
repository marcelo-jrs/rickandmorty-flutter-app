import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/enums/filter_enums.dart';
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

  Future<void> getCharacters({bool reset = false}) async {
    if (state.isLoading) return;
    final nextPage = reset ? 1 : state.currentPage;
    state = state.copyWith(isLoading: true);
    try {
      final response = await _characterRepository.fetchCharacters(
        page: nextPage,
        name: state.searchQuery,
        status: state.statusFilter,
        gender: state.genderFilter
        );
      state = state.copyWith(
        charactersList: reset 
            ? response.results 
            : [...state.charactersList, ...response.results],
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

  void updateSearchQuery(String query) {
    if (state.searchQuery == query) return;

    state = state.copyWith(
      searchQuery: query,
      currentPage: 1,
      charactersList: [],
      hasMore: true,
      isSearching: query.isNotEmpty,
    );

    getCharacters(reset: true);
  }

  void clearSearch() {
    updateSearchQuery('');
  }

  void updateFilters({
    StatusFilter? status,
    GenderFilter? gender,
  }) {
    final newStatus = status ?? state.statusFilter;
    final newGender = gender ?? state.genderFilter;

    final hasActiveFilters = newStatus != StatusFilter.none || 
                             newGender != GenderFilter.none;

    state = state.copyWith(
    statusFilter: newStatus,
    genderFilter: newGender,
    hasActiveFilters: hasActiveFilters,
    currentPage: 1,
    charactersList: [],
    hasMore: true,
    );

    getCharacters(reset: true);
  }

  void clearFilters() {
    state = state.copyWith(
      statusFilter: StatusFilter.none,
      genderFilter: GenderFilter.none,
      hasActiveFilters: false,
      currentPage: 1,
      charactersList: [],
      hasMore: true,
    );
    
    getCharacters(reset: true);
  }

  void clearAll() {
    clearSearch();
    clearFilters();
  }

}

@riverpod
CharacterModel currentCharacter(Ref ref, int index) {
  final characterState = ref.watch(charactersProvider);
  return characterState.charactersList[index];
}
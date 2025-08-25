import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/enums/filter_enums.dart';
import 'package:rickandmorty/models/character_model.dart';
import 'package:rickandmorty/models/info_model.dart';

part 'character_state.freezed.dart';

@freezed
abstract class CharacterState with _$CharacterState {
  factory CharacterState({
    @Default(1) int currentPage,
    @Default([]) List<CharacterModel> charactersList,
    @Default(false) bool isLoading,
    @Default("") String fetchCharactersError,
    @Default(false) bool hasMore,
    @Default(null) InfoModel? info,
    @Default("") String searchQuery,
    @Default(false) bool isSearching,
    @Default(StatusFilter.none) StatusFilter statusFilter,
    @Default(GenderFilter.none) GenderFilter genderFilter,
    @Default(false) bool hasActiveFilters,
  }) = _CharacterState;
}
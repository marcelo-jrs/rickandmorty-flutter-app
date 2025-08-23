// character_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
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
  }) = _CharacterState;
}
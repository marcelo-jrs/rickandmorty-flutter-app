import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mvvm_statemanagements/models/character_model.dart';
import 'package:mvvm_statemanagements/models/info_model.dart';

part 'character_response_model.freezed.dart';
part 'character_response_model.g.dart';

@freezed
abstract class CharacterResponse with _$CharacterResponse {
  const factory CharacterResponse({
    required InfoModel info,
    required List<CharacterModel> results,
  }) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterResponse _$CharacterResponseFromJson(Map<String, dynamic> json) =>
    _CharacterResponse(
      info: InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharacterResponseToJson(_CharacterResponse instance) =>
    <String, dynamic>{'info': instance.info, 'results': instance.results};

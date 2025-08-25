import 'package:rickandmorty/enums/filter_enums.dart';
import 'package:rickandmorty/models/character_response_model.dart';
import 'package:rickandmorty/service/api_service.dart';

class CharacterRepository {
  final ApiService _apiService;
  CharacterRepository(this._apiService);

  Future<CharacterResponse> fetchCharacters({
    int page = 1, 
    String name = '',
    StatusFilter status = StatusFilter.none,
    GenderFilter gender = GenderFilter.none,
    }) async {
    CharacterResponse characterResponse = await _apiService.fetchCharacters(
      page: page,
      name: name,
      status: status,
      gender: gender,
    );
    return characterResponse;
  }
}

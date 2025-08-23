import 'package:mvvm_statemanagements/models/character_response_model.dart';
import 'package:mvvm_statemanagements/service/api_service.dart';

class CharacterRepository {
  final ApiService _apiService;
  CharacterRepository(this._apiService);

  Future<CharacterResponse> fetchCharacters({int page = 1}) async {
    CharacterResponse characterResponse = await _apiService.fetchCharacters(page);
    return characterResponse;
  }
}

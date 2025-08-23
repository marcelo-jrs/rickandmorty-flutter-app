import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rickandmorty/constants/api_constants.dart';
import 'package:rickandmorty/models/character_response_model.dart';

class ApiService {
  Future<CharacterResponse> fetchCharacters(int page) async {
    final url = Uri.parse("${ApiConstants.baseUrl}/character?page=$page");
    
    final response = await http
        .get(url)
        .timeout(const Duration(seconds: 10));
    
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return CharacterResponse.fromJson(data);
    } else {
      throw Exception("Failed to load characters: ${response.statusCode}");
    }
}
}
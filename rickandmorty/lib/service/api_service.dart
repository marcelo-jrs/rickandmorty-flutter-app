import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rickandmorty/constants/api_constants.dart';
import 'package:rickandmorty/enums/filter_enums.dart';
import 'package:rickandmorty/models/character_response_model.dart';
import 'package:rickandmorty/models/info_model.dart';

class ApiService {
  Future<CharacterResponse> fetchCharacters({
    int page = 1,
    String name = '',
    StatusFilter status = StatusFilter.none,
    GenderFilter gender = GenderFilter.none,
  }) async {
    String url = "${ApiConstants.baseUrl}/character?page=$page";
    
    if (name.isNotEmpty) {
      url += "&name=$name";
    }

    if (status != StatusFilter.none) {
      url += "&status=${status.value}";
    }
    
    if (gender != GenderFilter.none) {
      url += "&gender=${gender.value}";
    }
    
    final response = await http
        .get(Uri.parse(url))
        .timeout(const Duration(seconds: 10));
    
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return CharacterResponse.fromJson(data);
    } else if (response.statusCode == 404) {
      return CharacterResponse(
        info: InfoModel(count: 0, pages: 0, next: null, prev: null),
        results: [],
      );
    } else {
      throw Exception("Failed to load characters: ${response.statusCode}");
    }
  }
}
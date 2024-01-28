import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> fetchRickAndMortyCharacters() async {
  try {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List<String> characters = [];

      for (var character in data['results']) {
        characters.add(character['name']);
      }

      return characters;
    } else {
      throw 'API request failed with status ${response.statusCode}';
    }
  } catch (error) {
    return ['error caught: $error'];
  }
}

Future<void> printRmCharacters() async {
  List<String> characters = await fetchRickAndMortyCharacters();

  for (var character in characters) {
    print(character);
  }
}

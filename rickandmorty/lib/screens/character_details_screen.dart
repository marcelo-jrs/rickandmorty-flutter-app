import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/models/character_model.dart';
import 'package:rickandmorty/widgets/character/character_details.dart';

class CharacterDetailsScreen extends ConsumerWidget {
  const CharacterDetailsScreen({super.key, required this.character});
  
  final CharacterModel character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        leading: BackButton(),
      ),
      body: CharacterDetailsWidget(character: character),
    );
  }
}
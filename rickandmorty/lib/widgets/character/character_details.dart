import 'package:flutter/material.dart';
import 'package:rickandmorty/models/character_model.dart';
import 'package:rickandmorty/widgets/cached_network_image.dart';

class CharacterDetailsWidget extends StatelessWidget {
  final CharacterModel character;

  const CharacterDetailsWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: 'character-${character.id}',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedImageWidget(
                imgUrl: character.image,
                imgHeight: 300,
                imgWidth: 300,
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),
          
          Text(
            character.name,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          
          _buildInfoRow('Status', character.status),
          _buildInfoRow('Species', character.species),
          
          if (character.type.isNotEmpty) _buildInfoRow('Type', character.type),
          
          _buildInfoRow('Gender', character.gender),
          
          _buildSectionTitle('Origin & Location'),
          _buildInfoRow('Origin', character.origin.name),
          _buildInfoRow('Location', character.location.name),
          
          _buildSectionTitle('Episodes'),
          Text(
            'Appears in ${character.episode.length} episode(s)',
            style: const TextStyle(fontSize: 16),
          ),
          
          _buildSectionTitle('Additional Info'),
          _buildInfoRow('Created', _formatDate(character.created)),
          SizedBox(height: 40),
        ],
      ),
      
    );
    
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value.isNotEmpty ? value : 'Unknown',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return dateString;
    }
  }
}
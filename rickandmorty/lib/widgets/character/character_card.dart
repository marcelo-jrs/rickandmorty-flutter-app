import 'package:flutter/material.dart';
import 'package:rickandmorty/models/character_model.dart';
import 'package:rickandmorty/screens/character_details_screen.dart';
import 'package:rickandmorty/service/init_getit.dart';
import 'package:rickandmorty/service/navigation_service.dart';
import 'package:rickandmorty/widgets/cached_network_image.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.character});

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: InkWell(
        onTap: (){
          getIt<NavigationService>().navigate(CharacterDetailsScreen(character: character));
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'character-${character.id}',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedImageWidget(
                    imgUrl: character.image,
                    imgHeight: 80,
                    imgWidth: 80,
                    boxFit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.grey[100] : Colors.grey[900],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: _getStatusColor(character.status),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '${character.status} - ${character.species}',
                          style: TextStyle(
                            fontSize: 14,
                            color: isDark ? Colors.grey[300] : Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Gender: ${character.gender}',
                      style: TextStyle(
                        fontSize: 12,
                        color: isDark ? Colors.grey[400] : Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'alive':
        return Colors.green;
      case 'dead':
        return Colors.red;
      case 'unknown':
      default:
        return Colors.grey;
    }
  }
}
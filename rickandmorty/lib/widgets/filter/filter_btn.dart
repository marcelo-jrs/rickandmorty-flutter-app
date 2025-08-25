import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/view_model/character/character_provider.dart';
import 'package:rickandmorty/widgets/filter/filter_sheet.dart';

class FilterButton extends ConsumerWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasActiveFilters = ref.watch(charactersProvider.select((state) => state.hasActiveFilters));
    
    return IconButton(
      icon: Badge(
        isLabelVisible: hasActiveFilters,
        backgroundColor: Colors.orange,
        child: const Icon(Icons.filter_list),
      ),
      onPressed: () {
        _showFilterSheet(context, ref);
      },
      tooltip: 'Filter characters',
    );
  }

  void _showFilterSheet(BuildContext context, WidgetRef ref) {
    final characterState = ref.read(charactersProvider);
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FilterSheet(
          currentStatus: characterState.statusFilter,
          currentGender: characterState.genderFilter,
        );
      },
    );
  }
}
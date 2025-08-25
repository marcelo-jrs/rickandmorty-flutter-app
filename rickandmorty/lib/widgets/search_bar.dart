import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/view_model/character/character_provider.dart';
import 'dart:async';

import 'package:rickandmorty/widgets/filter/filter_btn.dart';

class SearchBarWidget extends ConsumerStatefulWidget {
  const SearchBarWidget({super.key});

  @override
  ConsumerState<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends ConsumerState<SearchBarWidget> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    
    _debounce = Timer(const Duration(milliseconds: 500), () {
      ref.read(charactersProvider.notifier).updateSearchQuery(
        _searchController.text,
      );
    });
  }

  void _clearAll() {
    _searchController.clear();
    ref.read(charactersProvider.notifier).clearAll();
  }

  @override
  Widget build(BuildContext context) {
    final hasActiveFilters = ref.watch(charactersProvider.select((state) => state.hasActiveFilters));
    final hasSearchQuery = ref.watch(charactersProvider.select((state) => state.searchQuery.isNotEmpty));
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search characters...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: (hasSearchQuery || hasActiveFilters) 
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: _clearAll,
                        tooltip: 'Clear all filters and search',
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          const FilterButton(),
        ],
      ),
    );
  }
}
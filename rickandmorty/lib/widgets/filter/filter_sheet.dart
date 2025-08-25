import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/view_model/character/character_provider.dart';
import 'package:rickandmorty/enums/filter_enums.dart';

class FilterSheet extends ConsumerStatefulWidget {
  final StatusFilter currentStatus;
  final GenderFilter currentGender;

  const FilterSheet({
    super.key,
    required this.currentStatus,
    required this.currentGender,
  });

  @override
  ConsumerState<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends ConsumerState<FilterSheet> {
  late StatusFilter _selectedStatus;
  late GenderFilter _selectedGender;

  @override
  void initState() {
    super.initState();
    _selectedStatus = widget.currentStatus;
    _selectedGender = widget.currentGender;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Filters',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          
          const Text(
            'Status',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          
          Column(
            children: StatusFilter.values
                .where((filter) => filter != StatusFilter.none)
                .map((status) {
              return ListTile(
                leading: Radio<StatusFilter>(
                  value: status,
                  groupValue: _selectedStatus,
                  onChanged: (StatusFilter? value) {
                    setState(() {
                      _selectedStatus = value!;
                    });
                  },
                ),
                title: Text(status.displayName),
                onTap: () {
                  setState(() {
                    _selectedStatus = status;
                  });
                },
              );
            }).toList(),
          ),
          
          const SizedBox(height: 20),
          
          const Text(
            'Gender',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          
          Column(
            children: GenderFilter.values
                .where((filter) => filter != GenderFilter.none)
                .map((gender) {
              return ListTile(
                leading: Radio<GenderFilter>(
                  value: gender,
                  groupValue: _selectedGender,
                  onChanged: (GenderFilter? value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: Text(gender.displayName),
                onTap: () {
                  setState(() {
                    _selectedGender = gender;
                  });
                },
              );
            }).toList(),
          ),
          
          const SizedBox(height: 30),
          
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _selectedStatus = StatusFilter.none;
                      _selectedGender = GenderFilter.none;
                    });
                  },
                  child: const Text('Reset'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(charactersProvider.notifier).updateFilters(
                      status: _selectedStatus,
                      gender: _selectedGender,
                    );
                    Navigator.pop(context);
                  },
                  child: const Text('Apply Filters'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
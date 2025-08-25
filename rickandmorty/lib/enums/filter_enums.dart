enum StatusFilter {
  alive,
  dead,
  unknown,
  none,
}

enum GenderFilter {
  male,
  female,
  genderless,
  unknown,
  none,
}

extension StatusFilterExtension on StatusFilter {
  String get value {
    switch (this) {
      case StatusFilter.alive:
        return 'alive';
      case StatusFilter.dead:
        return 'dead';
      case StatusFilter.unknown:
        return 'unknown';
      case StatusFilter.none:
        return '';
    }
  }
  
  String get displayName {
    switch (this) {
      case StatusFilter.alive:
        return 'Alive';
      case StatusFilter.dead:
        return 'Dead';
      case StatusFilter.unknown:
        return 'Unknown';
      case StatusFilter.none:
        return 'None';
    }
  }
}

extension GenderFilterExtension on GenderFilter {
  String get value {
    switch (this) {
      case GenderFilter.male:
        return 'male';
      case GenderFilter.female:
        return 'female';
      case GenderFilter.genderless:
        return 'genderless';
      case GenderFilter.unknown:
        return 'unknown';
      case GenderFilter.none:
        return '';
    }
  }
  
  String get displayName {
    switch (this) {
      case GenderFilter.male:
        return 'Male';
      case GenderFilter.female:
        return 'Female';
      case GenderFilter.genderless:
        return 'Genderless';
      case GenderFilter.unknown:
        return 'Unknown';
      case GenderFilter.none:
        return 'None';
    }
  }
}
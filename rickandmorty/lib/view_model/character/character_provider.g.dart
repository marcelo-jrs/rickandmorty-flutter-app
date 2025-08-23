// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentCharacterHash() => r'd75d5bca9cada4fdc9d83cd97fa501ed7311c94d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [currentCharacter].
@ProviderFor(currentCharacter)
const currentCharacterProvider = CurrentCharacterFamily();

/// See also [currentCharacter].
class CurrentCharacterFamily extends Family<CharacterModel> {
  /// See also [currentCharacter].
  const CurrentCharacterFamily();

  /// See also [currentCharacter].
  CurrentCharacterProvider call(int index) {
    return CurrentCharacterProvider(index);
  }

  @override
  CurrentCharacterProvider getProviderOverride(
    covariant CurrentCharacterProvider provider,
  ) {
    return call(provider.index);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'currentCharacterProvider';
}

/// See also [currentCharacter].
class CurrentCharacterProvider extends AutoDisposeProvider<CharacterModel> {
  /// See also [currentCharacter].
  CurrentCharacterProvider(int index)
    : this._internal(
        (ref) => currentCharacter(ref as CurrentCharacterRef, index),
        from: currentCharacterProvider,
        name: r'currentCharacterProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$currentCharacterHash,
        dependencies: CurrentCharacterFamily._dependencies,
        allTransitiveDependencies:
            CurrentCharacterFamily._allTransitiveDependencies,
        index: index,
      );

  CurrentCharacterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Override overrideWith(
    CharacterModel Function(CurrentCharacterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentCharacterProvider._internal(
        (ref) => create(ref as CurrentCharacterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<CharacterModel> createElement() {
    return _CurrentCharacterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentCharacterProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CurrentCharacterRef on AutoDisposeProviderRef<CharacterModel> {
  /// The parameter `index` of this provider.
  int get index;
}

class _CurrentCharacterProviderElement
    extends AutoDisposeProviderElement<CharacterModel>
    with CurrentCharacterRef {
  _CurrentCharacterProviderElement(super.provider);

  @override
  int get index => (origin as CurrentCharacterProvider).index;
}

String _$charactersHash() => r'e200423f77df737a5ee6e037000a1cfd0b871b5c';

/// See also [Characters].
@ProviderFor(Characters)
final charactersProvider =
    NotifierProvider<Characters, CharacterState>.internal(
      Characters.new,
      name: r'charactersProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$charactersHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Characters = Notifier<CharacterState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

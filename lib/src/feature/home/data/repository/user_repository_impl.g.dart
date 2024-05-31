// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryImplHash() =>
    r'35606fbd0b907d7225ced8a2329b7f1db0e546cb';

/// See also [userRepositoryImpl].
@ProviderFor(userRepositoryImpl)
final userRepositoryImplProvider =
    AutoDisposeProvider<UserRepositoryImpl>.internal(
  userRepositoryImpl,
  name: r'userRepositoryImplProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryImplHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRepositoryImplRef = AutoDisposeProviderRef<UserRepositoryImpl>;
String _$getUserHash() => r'd6a11d8e9c02e8c5750461077efac24a06004e52';

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

/// See also [getUser].
@ProviderFor(getUser)
const getUserProvider = GetUserFamily();

/// See also [getUser].
class GetUserFamily extends Family<AsyncValue<Either<Exception, User>>> {
  /// See also [getUser].
  const GetUserFamily();

  /// See also [getUser].
  GetUserProvider call(
    int id,
  ) {
    return GetUserProvider(
      id,
    );
  }

  @override
  GetUserProvider getProviderOverride(
    covariant GetUserProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUserProvider';
}

/// See also [getUser].
class GetUserProvider
    extends AutoDisposeFutureProvider<Either<Exception, User>> {
  /// See also [getUser].
  GetUserProvider(
    int id,
  ) : this._internal(
          (ref) => getUser(
            ref as GetUserRef,
            id,
          ),
          from: getUserProvider,
          name: r'getUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserHash,
          dependencies: GetUserFamily._dependencies,
          allTransitiveDependencies: GetUserFamily._allTransitiveDependencies,
          id: id,
        );

  GetUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Either<Exception, User>> Function(GetUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUserProvider._internal(
        (ref) => create(ref as GetUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Exception, User>> createElement() {
    return _GetUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUserRef on AutoDisposeFutureProviderRef<Either<Exception, User>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetUserProviderElement
    extends AutoDisposeFutureProviderElement<Either<Exception, User>>
    with GetUserRef {
  _GetUserProviderElement(super.provider);

  @override
  int get id => (origin as GetUserProvider).id;
}

String _$getAllUserHash() => r'eb5ec1bfc379f3735119841301cfe976f3e63ae2';

/// See also [getAllUser].
@ProviderFor(getAllUser)
const getAllUserProvider = GetAllUserFamily();

/// See also [getAllUser].
class GetAllUserFamily
    extends Family<AsyncValue<Either<Exception, List<User>>>> {
  /// See also [getAllUser].
  const GetAllUserFamily();

  /// See also [getAllUser].
  GetAllUserProvider call(
    int page,
  ) {
    return GetAllUserProvider(
      page,
    );
  }

  @override
  GetAllUserProvider getProviderOverride(
    covariant GetAllUserProvider provider,
  ) {
    return call(
      provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAllUserProvider';
}

/// See also [getAllUser].
class GetAllUserProvider
    extends AutoDisposeFutureProvider<Either<Exception, List<User>>> {
  /// See also [getAllUser].
  GetAllUserProvider(
    int page,
  ) : this._internal(
          (ref) => getAllUser(
            ref as GetAllUserRef,
            page,
          ),
          from: getAllUserProvider,
          name: r'getAllUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAllUserHash,
          dependencies: GetAllUserFamily._dependencies,
          allTransitiveDependencies:
              GetAllUserFamily._allTransitiveDependencies,
          page: page,
        );

  GetAllUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<Either<Exception, List<User>>> Function(GetAllUserRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAllUserProvider._internal(
        (ref) => create(ref as GetAllUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Either<Exception, List<User>>>
      createElement() {
    return _GetAllUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAllUserProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAllUserRef
    on AutoDisposeFutureProviderRef<Either<Exception, List<User>>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _GetAllUserProviderElement
    extends AutoDisposeFutureProviderElement<Either<Exception, List<User>>>
    with GetAllUserRef {
  _GetAllUserProviderElement(super.provider);

  @override
  int get page => (origin as GetAllUserProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

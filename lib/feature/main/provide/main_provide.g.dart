// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_provide.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(MainProvide)
const mainProvideProvider = MainProvideProvider._();

final class MainProvideProvider
    extends $NotifierProvider<MainProvide, MainModel> {
  const MainProvideProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mainProvideProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mainProvideHash();

  @$internal
  @override
  MainProvide create() => MainProvide();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MainModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MainModel>(value),
    );
  }
}

String _$mainProvideHash() => r'061f9adbdec89e4bd92cfbfdd19d73f55d429c87';

abstract class _$MainProvide extends $Notifier<MainModel> {
  MainModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MainModel, MainModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MainModel, MainModel>,
              MainModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

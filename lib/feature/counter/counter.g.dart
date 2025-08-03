// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(CounterController)
const counterControllerProvider = CounterControllerProvider._();

final class CounterControllerProvider
    extends $NotifierProvider<CounterController, AsyncValue<int>> {
  const CounterControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterControllerHash();

  @$internal
  @override
  CounterController create() => CounterController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<int>>(value),
    );
  }
}

String _$counterControllerHash() => r'2c59f76a00a472ecba117571d5c35440610fa74e';

abstract class _$CounterController extends $Notifier<AsyncValue<int>> {
  AsyncValue<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<int>, AsyncValue<int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, AsyncValue<int>>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

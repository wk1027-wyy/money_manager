// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(StatisticsNotifier)
const statisticsNotifierProvider = StatisticsNotifierProvider._();

final class StatisticsNotifierProvider
    extends $NotifierProvider<StatisticsNotifier, int> {
  const StatisticsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'statisticsNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$statisticsNotifierHash();

  @$internal
  @override
  StatisticsNotifier create() => StatisticsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$statisticsNotifierHash() =>
    r'2ea6439f81893889578423b4c43ef7ac4fa18498';

abstract class _$StatisticsNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

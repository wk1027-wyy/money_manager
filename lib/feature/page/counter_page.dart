import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_/gen/assets.gen.dart';
import 'package:money_/generated/locale_keys.g.dart';

class CounterPage extends ConsumerStatefulWidget {
  const CounterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends ConsumerState<CounterPage> {
  @override
  Widget build(BuildContext context) {
    // final counterAsync = ref.watch(counterControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(LocaleKeys.title), centerTitle: true),
      body: Center(child: Assets.images.home.image()),
    );
  }
}

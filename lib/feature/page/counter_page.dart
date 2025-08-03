import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_/feature/counter/counter.dart';

class CounterPage extends ConsumerStatefulWidget {
  const CounterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends ConsumerState<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final counterAsync = ref.watch(counterControllerProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('异步计数器'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 显示计数器状态
            counterAsync.when(
              data: (count) => Column(
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '当前计数: $count',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '加载成功',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              loading: () => const Column(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text(
                    '加载中...',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              error: (error, stack) => Column(
                 children: [
                   const Icon(
                     Icons.error,
                     color: Colors.red,
                     size: 48,
                   ),
                   const SizedBox(height: 16),
                   const Text(
                     '加载失败',
                     style: TextStyle(
                       color: Colors.red,
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   const SizedBox(height: 8),
                   Container(
                     padding: const EdgeInsets.all(12),
                     margin: const EdgeInsets.symmetric(horizontal: 20),
                     decoration: BoxDecoration(
                       color: Colors.red.shade50,
                       border: Border.all(color: Colors.red.shade200),
                       borderRadius: BorderRadius.circular(8),
                     ),
                     child: Text(
                       '$error',
                       style: const TextStyle(color: Colors.red),
                       textAlign: TextAlign.center,
                     ),
                   ),
                   const SizedBox(height: 16),
                   ElevatedButton.icon(
                     onPressed: () {
                       ref.read(counterControllerProvider.notifier).retry();
                     },
                     icon: const Icon(Icons.refresh),
                     label: const Text('重试'),
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.orange,
                       foregroundColor: Colors.white,
                     ),
                   ),
                 ],
               ),
            ),
            const SizedBox(height: 32),
            // 操作按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: counterAsync.isLoading
                      ? null
                      : () {
                          ref.read(counterControllerProvider.notifier).add();
                        },
                  icon: const Icon(Icons.add),
                  label: const Text('增加'),
                ),
                ElevatedButton.icon(
                  onPressed: counterAsync.isLoading
                      ? null
                      : () {
                          ref.read(counterControllerProvider.notifier).reset();
                        },
                  icon: const Icon(Icons.refresh),
                  label: const Text('重置'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

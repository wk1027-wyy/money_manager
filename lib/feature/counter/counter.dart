import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter.g.dart';

@riverpod
class CounterController extends _$CounterController {
  @override
  AsyncValue<int> build() {
    return const AsyncValue.data(10);
  }

  Future<void> add() async {
    // 设置加载状态
    state = const AsyncValue.loading();
    
    try {
      // 模拟异步操作（比如网络请求）
      await Future.delayed(const Duration(seconds: 2));
      
      // 获取当前值并增加
      final currentValue = state.value ?? 0;
      
      // 模拟偶尔失败的情况（当计数达到5的倍数时）
      if ((currentValue + 1) % 5 == 0) {
        throw Exception('服务器错误：计数不能是5的倍数！');
      }
      
      state = AsyncValue.data(currentValue + 1);
    } catch (error, stackTrace) {
      // 处理错误状态
      state = AsyncValue.error(error, stackTrace);
    }
  }

  void reset() {
    state = const AsyncValue.data(0);
  }
  
  // 添加一个重试方法
  Future<void> retry() async {
    if (state.hasError) {
      await add();
    }
  }
}

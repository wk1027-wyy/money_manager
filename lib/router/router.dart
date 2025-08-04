import 'package:go_router/go_router.dart';
import 'package:money_/feature/detail/page/detail.dart';
import 'package:money_/feature/home/page/home.dart';
import 'package:money_/feature/main/page/main_page.dart';

/**
 * // 基础导航
context.go('/profile');              // 替换当前路由
context.push('/settings');           // 推入新路由
context.pop();                       // 返回上一页
context.pop('result');               // 带返回值返回

// 命名路由导航
context.goNamed('home');
context.pushNamed('profile', pathParameters: {'id': '123'});

// 替换路由栈
context.pushReplacement('/login');
context.pushReplacementNamed('login');

// 清空路由栈并导航
context.go('/home');

// 检查是否可以返回
if (context.canPop()) {
  context.pop();
}
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 */
//
class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const MainPage()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(path: '/detail', builder: (context, state) => const DetailPage()),
    ],
  );
}

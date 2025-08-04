import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_/feature/bills/page/bills_page.dart';
import 'package:money_/feature/statistics/page/statistics_page.dart';
import 'package:money_/feature/savings/page/savings_page.dart';
import 'package:money_/feature/profile/page/profile_page.dart';

/// 主页面 - 包含底部导航栏的容器页面
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  /// 页面列表
  final List<Widget> _pages = [
    const BillsPage(),
    const StatisticsPage(),
    const SavingsPage(),
    const ProfilePage(),
  ];

  /// 切换底部导航栏选中项
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1976D2), // Material Blue 700
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFBBDEFB), // Material Blue 100
        elevation: 8,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.receipt),
            label: '账单',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.chartLine),
            label: '统计',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.piggyBank),
            label: '存钱',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: '个人',
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_/feature/login/bean/user.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    var user2 = user(age: 1, name: "10", isActive: true).copyWith(name: "复杂");
    return Scaffold(
      body: Center(
        child: Text(user2.name??"ss"),
      ),
    );
  }
}

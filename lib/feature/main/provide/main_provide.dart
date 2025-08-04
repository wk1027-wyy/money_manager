import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_/feature/home/page/home.dart';
import 'package:money_/feature/main/bean/main_model.dart';
import 'package:money_/feature/profile/page/profile_page.dart';
import 'package:money_/feature/savings/page/savings_page.dart';
import 'package:money_/feature/statistics/page/statistics_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuple/tuple.dart';
part 'main_provide.g.dart';


@riverpod
class MainProvide extends _$MainProvide {
  @override
  MainModel build() {
    return MainModel(
      selectIndex: 0,
      pages: [
        Tuple3(HomePage(), FaIcon(FontAwesomeIcons.receipt), "账单"),
        Tuple3(StatisticsPage(), FaIcon(FontAwesomeIcons.chartLine), "统计"),
        Tuple3(SavingsPage(), FaIcon(FontAwesomeIcons.piggyBank), "存钱"),
        Tuple3(ProfilePage(), FaIcon(FontAwesomeIcons.user), "个人"),
      ],
    );
  }

  void selectTab(index) {
    state = state.copyWith(selectIndex: index);
  }
}

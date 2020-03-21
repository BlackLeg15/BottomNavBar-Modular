import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'components/items.dart';
part 'bottom_nav_bar_controller.g.dart';

class BottomNavBarController = _BottomNavBarControllerBase
    with _$BottomNavBarController;

abstract class _BottomNavBarControllerBase with Store {
  final List<BottomNavigationBarItem> items = BNBItems.list;
  List<String> pages = [Modular.initialRoute, '/page2'];

  @observable
  int currentIndex = 0;

  @action
  Future setIndex(int index) async {
    currentIndex = index;
  }

  void onTap(int index) async {
    await setIndex(index);
    Modular.to.pushReplacementNamed(pages[index]);
  }
}

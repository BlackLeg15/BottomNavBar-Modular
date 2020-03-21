import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'bottom_nav_bar_controller.dart';

class BottomNavBarWidget extends StatelessWidget {
  final controller = Modular.get<BottomNavBarController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Observer(builder: (_) {
          return BottomNavigationBar(
            items: controller.items,
            currentIndex: controller.currentIndex,
            onTap: controller.onTap,
          );
        }),
      ),
    );
  }
}

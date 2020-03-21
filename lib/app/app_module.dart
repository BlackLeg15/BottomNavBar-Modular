import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cp_bottom_nav_bar/app/app_controller.dart';
import 'package:cp_bottom_nav_bar/app/app_widget.dart';
import 'package:cp_bottom_nav_bar/app/modules/home/home_module.dart';
import 'package:cp_bottom_nav_bar/app/modules/page2/page2_module.dart';
import 'shared/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'shared/widgets/bottom_nav_bar/bottom_nav_bar_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => BottomNavBarWidget()),
        Bind((i) => BottomNavBarController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/page2", module: Page2Module()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

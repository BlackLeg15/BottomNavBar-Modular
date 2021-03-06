import 'package:cp_bottom_nav_bar/app/modules/page2/page2_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cp_bottom_nav_bar/app/modules/page2/page2_page.dart';

class Page2Module extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Page2Controller()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => Page2Page()),
      ];

  static Inject get to => Inject<Page2Module>.of();
}

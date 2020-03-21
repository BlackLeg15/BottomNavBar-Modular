import 'package:cp_bottom_nav_bar/app/shared/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'page2_controller.dart';

class Page2Page extends StatefulWidget {
  final String title;
  const Page2Page({Key key, this.title = "Page2"}) : super(key: key);

  @override
  _Page2PageState createState() => _Page2PageState();
}

class _Page2PageState extends ModularState<Page2Page, Page2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "github.com/BlackLeg15",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Modular.get<BottomNavBarWidget>(),
    );
  }
}

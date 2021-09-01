import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zoomdrawer/data/menuitems.dart';
import 'package:zoomdrawer/pages/aboutUs.dart';
import 'package:zoomdrawer/pages/helpPage.dart';
import 'package:zoomdrawer/pages/paymentpage.dart';
import 'package:zoomdrawer/screens/menuscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MenuItem currentItem = MenuItems.payment;

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ZoomDrawer(
        borderRadius: 50,
        angle: -10,
        showShadow: true,
        backgroundColor: Colors.red,
        style: DrawerStyle.Style1,
        mainScreen: getScreen(),
        menuScreen: Builder(
          builder: (context) => MenuScreen(
              currentItem: currentItem,
              onSelectedItem: (item) {
                setState(() => currentItem = item);
                ZoomDrawer.of(context)!.close();
              }),
        ),
      ));

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.aboutUs:
        return AboutUs();
      case MenuItems.help:
        return HelpPage();
      default:
        return PaymentPage();
    }
  }
}

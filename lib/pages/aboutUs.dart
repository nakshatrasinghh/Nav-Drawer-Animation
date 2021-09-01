import 'package:flutter/material.dart';
import 'package:zoomdrawer/widgets/menuwidgets.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: MenuWidget(),
      backgroundColor: Colors.amber,
      title: Text('About Us'),
    ));
  }
}

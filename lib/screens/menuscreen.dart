import 'package:flutter/material.dart';
import 'package:zoomdrawer/data/menuitems.dart';

class MenuItems {
  static const payment = MenuItem('Payment', Icons.payment);
  static const aboutUs = MenuItem('About Us', Icons.info_outline_rounded);
  static const help = MenuItem('Help', Icons.help_outline_rounded);

  static const all = <MenuItem>[
    payment,
    aboutUs,
    help,
  ];
}

class MenuScreen extends StatefulWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  const MenuScreen(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
          backgroundColor: Colors.orangeAccent[100],
          body: SafeArea(
              child: Column(children: <Widget>[
            Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(flex: 2),
          ]))),
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: widget.currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => widget.onSelectedItem(item),
        ),
      );
}

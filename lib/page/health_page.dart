import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transtool/component/animated_bottom_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HealthPage extends StatefulWidget{
  late List<BarItem> items;

  @override
  State<StatefulWidget> createState() => HealthPageState();
}

class HealthPageState extends State<HealthPage> {
  int selectedBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    widget.items = [
      BarItem(text: AppLocalizations.of(context)!.tab_item_1, iconData: Icons.home, color: Colors.indigo),
      BarItem(text: AppLocalizations.of(context)!.tab_item_2, iconData: Icons.home, color: Colors.indigo),
      BarItem(text: AppLocalizations.of(context)!.tab_item_3, iconData: Icons.home, color: Colors.indigo),
      BarItem(text: AppLocalizations.of(context)!.tab_item_4, iconData: Icons.settings, color: Colors.black26),
    ];
    return Scaffold(
      body: AnimatedContainer(
        color: widget.items[selectedBarIndex].color,
        duration: const Duration(milliseconds: 300),
      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.items,
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(
              fontSize: 20.0,
              iconSize: 30.0
          ),
          onBarTap: (index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }

}
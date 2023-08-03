import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transtool/component/animated_bottom_bar.dart';

class HomePage extends StatefulWidget{
  final List<BarItem> items = [
    BarItem(text: "text", iconData: Icons.home, color: Colors.indigo),
    BarItem(text: "text", iconData: Icons.home, color: Colors.indigo),
    BarItem(text: "text", iconData: Icons.home, color: Colors.indigo),
    BarItem(text: "text", iconData: Icons.home, color: Colors.indigo),
    BarItem(text: "text", iconData: Icons.home, color: Colors.indigo)
  ];

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
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
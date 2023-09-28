import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transtool/component/animated_bottom_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:transtool/page/diary_page.dart';
import 'package:transtool/page/health_page.dart';
import 'package:transtool/page/setting_page.dart';
import 'package:transtool/page/voice_page.dart';

class FatherContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FatherContainerState();

  List pageList = [
    HealthPage(),
    DiaryPage(),
    VoicePage(),
    SettingPage()
  ];
}

class FatherContainerState extends State<FatherContainer> {
    int activatedItem = 0;

    @override
    Widget build(BuildContext context){
      var items = [
        BarItem(text: AppLocalizations.of(context)!.tab_item_1, iconData: Icons.health_and_safety, color: Colors.lightBlueAccent),
        BarItem(text: AppLocalizations.of(context)!.tab_item_2, iconData: Icons.event_note, color: Colors.pinkAccent),
        BarItem(text: AppLocalizations.of(context)!.tab_item_3, iconData: Icons.keyboard_voice, color: Colors.white),
        BarItem(text: AppLocalizations.of(context)!.tab_item_4, iconData: Icons.settings, color: Colors.pinkAccent),
      ];
      return Scaffold(
        body: widget.pageList[activatedItem],
        bottomNavigationBar: AnimatedBottomBar(
          barItems: items,
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(
            fontSize: 20.0,
            iconSize: 30.0
          ),
          onBarTap: (index) {
            setState(() {
              activatedItem = index;
            });
          }
          ),
      );
    }
}
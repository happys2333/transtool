import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingPage extends StatefulWidget {

  @override
  SettingPageState createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${AppLocalizations.of(context)?.app_title}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('中文'),
                onPressed: () {
                  // MyAppState.setting.changeLocale(Locale('zh'));
                },
              ),
              ElevatedButton(
                child: const Text('英文'),
                onPressed: () {
                  // MyAppState.setting.changeLocale(Locale('en'));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
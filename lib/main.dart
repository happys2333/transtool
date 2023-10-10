import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:transtool/model/setting.dart';
import 'package:transtool/page/father_container.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // init
  Future<void> initApp() async {

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initApp();
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) {
        return AppLocalizations.of(context)!.app_title;
      },
      locale: Setting().locale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FatherContainer(),
    );
  }


}
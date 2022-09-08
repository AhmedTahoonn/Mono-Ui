import 'package:flutter/material.dart';
import '../../Constants/Strings Manager/strings_manager.dart';
import '../../Constants/Themes Manager/Theme Manager.dart';
import '../Splash Page/splash_Screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.app_Name,
      theme:AppTheme.lightTheme,
      home: splash_Screen(),
    );
  }
}
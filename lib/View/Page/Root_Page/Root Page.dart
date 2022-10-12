import 'package:flutter/material.dart';
import '../../Constants/Strings Manager/strings_manager.dart';
import '../../Constants/Themes Manager/Theme Manager.dart';
import '../Home layout/home_layout_arabic.dart';
import '../Sign Up Page/Sign Up Arabic.dart';
import '../Splash Page/splash_Screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.app_Name,
      theme:AppTheme.lightTheme,
      home: Sign_up_arabic_page(),
    );
  }
}
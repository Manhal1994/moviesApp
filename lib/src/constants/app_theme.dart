import 'dart:io';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mymovies/src/constants/colors.dart';
import 'package:mymovies/src/constants/font_family.dart';
@injectable
class AppTheme{
  
  static ThemeData lightTheme = ThemeData(
    backgroundColor: AppColors.lightBG,
    primaryColor: AppColors.lightPrimary,
    accentColor: AppColors.lightAccent,
    cursorColor: AppColors.lightAccent,
    platform: Platform.isAndroid ? TargetPlatform.android : TargetPlatform.iOS,
    //platform:TargetPlatform.iOS,
    fontFamily: FontFamily.productSans,
    scaffoldBackgroundColor: AppColors.lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: AppColors.darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
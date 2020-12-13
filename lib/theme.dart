import 'package:flutter/material.dart';

import 'constants/colors.dart';
final themeData = ThemeData(
    primaryColor: AppColors.primary,
    errorColor: AppColors.errorColor,
    // primaryColorDark: AppColors.black,
    // textTheme: GoogleFonts.kanitTextTheme(),
    // disabledColor: AppColors.disabled,
    // shadowColor: AppColors.baseGreyColor,
    // backgroundColor: Colors.grey[200],
    // accentColor: Colors.red,
    // ========= EDIT BUTTON THEME HERE =========
    // buttonTheme: ButtonThemeData(
    //   buttonColor: AppColors.primary,
    //   disabledColor: AppColors.disabled,
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(16),
    //       side: BorderSide(color: AppColors.primary)),
    // ),
    appBarTheme: AppBarTheme(
        // textTheme: GoogleFonts.kanitTextTheme(
        //     TextTheme(headline6: TextStyle(fontSize: FontSizes.headline6))),
        // iconTheme: IconThemeData(color: AppColors.baseWhiteColor, size: 32),
        centerTitle: true));

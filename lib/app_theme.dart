import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    labelLarge: GoogleFonts.sen(
      color: Colors.black,
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: GoogleFonts.sen(
      color: Colors.grey,
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: GoogleFonts.sen(color: Colors.black, fontSize: 16.sp),
    titleSmall: GoogleFonts.sen(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: GoogleFonts.sen(color: Colors.black, fontSize: 16.sp),
  ),
  appBarTheme: AppBarTheme(
    leadingWidth: 90.w,
    backgroundColor: Colors.white.withAlpha(0),
    foregroundColor: Colors.white,
    surfaceTintColor: Colors.grey.shade300,
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: GoogleFonts.sen(
      color: Colors.deepOrange,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    toolbarTextStyle: GoogleFonts.sen(
      color: Colors.grey,
      fontSize: 17.sp,
      fontWeight: FontWeight.bold,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.white,
  ),
  searchBarTheme: SearchBarThemeData(
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
    ),
    elevation: WidgetStatePropertyAll(0),
    backgroundColor: WidgetStatePropertyAll(Colors.grey.shade200),
    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 10.w)),
    hintStyle: WidgetStatePropertyAll(GoogleFonts.sen(color: Colors.grey)),
  ),
  listTileTheme: ListTileThemeData(
    contentPadding: EdgeInsets.all(0),
    titleTextStyle: GoogleFonts.sen(
      color: Colors.black,
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
    ),
    leadingAndTrailingTextStyle: GoogleFonts.sen(
      decorationColor: Colors.white,
      color: Colors.deepOrange,
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    subtitleTextStyle: GoogleFonts.sen(
      color: Colors.grey,
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    iconColor: Colors.deepOrange,
  ),
  cardTheme: CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
    ),
    color: Colors.white,
    shadowColor: Colors.grey,
    elevation: 5,
  ),
);

//----------------------------------------------------------------

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xFF0B1220),
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(primary: Colors.deepOrange),
  textTheme: TextTheme(
    labelLarge: GoogleFonts.sen(
      color: Colors.white,
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: GoogleFonts.sen(
      color: Colors.grey,
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: GoogleFonts.sen(color: Colors.white, fontSize: 16.sp),
    titleSmall: GoogleFonts.sen(
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: GoogleFonts.sen(color: Colors.white, fontSize: 16.sp),
  ),
  appBarTheme: AppBarTheme(
    leadingWidth: 90.w,
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.white,
    surfaceTintColor: Color.fromARGB(255, 17, 28, 49),
    iconTheme: const IconThemeData(color: Colors.deepOrange),
    actionsIconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: GoogleFonts.sen(
      color: Colors.deepOrange,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    toolbarTextStyle: GoogleFonts.sen(
      color: Colors.grey.shade200,
      fontSize: 17.sp,
      fontWeight: FontWeight.bold,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xFF0B1220),
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey.shade400,
  ),
  searchBarTheme: SearchBarThemeData(
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
    ),
    elevation: WidgetStatePropertyAll(0),
    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 17, 28, 49)),
    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 10.w)),
    hintStyle: WidgetStatePropertyAll(
      GoogleFonts.sen(color: Colors.grey.shade200),
    ),
  ),
  listTileTheme: ListTileThemeData(
    contentPadding: EdgeInsets.all(0),
    titleTextStyle: GoogleFonts.sen(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    leadingAndTrailingTextStyle: GoogleFonts.sen(
      decorationColor: Colors.deepOrange,
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    iconColor: Colors.white,
  ),
  cardTheme: CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
    ),
    color: const Color(0xFF0B1220),
    shadowColor: Color.fromARGB(255, 64, 94, 153),
    elevation: 5,
  ),
);

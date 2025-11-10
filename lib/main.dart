import 'package:bite_food_delivery/Model/bottom_bar_list_model.dart';
import 'package:bite_food_delivery/Screen/account_page.dart';
import 'package:bite_food_delivery/Screen/home_page.dart';
import 'package:bite_food_delivery/Screen/search_page.dart';
import 'package:bite_food_delivery/Widget/bottom_bar_widget.dart';
import 'package:bite_food_delivery/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

final List<BottomBarListModel> screens = [
  BottomBarListModel(
    title: 'Home',
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
    page: HomePage(),
  ),
  BottomBarListModel(
    title: 'Search',
    icon: Icons.search_outlined,
    selectedIcon: Icons.search,
    page: SearchPage(),
  ),
  BottomBarListModel(
    title: 'Account',
    icon: Icons.person_outlined,
    selectedIcon: Icons.person,
    page: AccountPage(),
  ),
];

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: child,
      ),
      child: Consumer(
        builder: (context, ref, child) {
          final index = ref.watch(currentIndexProvider);
          return Scaffold(
            body: Consumer(builder: (context, ref, _) => screens[index].page),
            bottomNavigationBar: BottomBarWidget(items: screens),
          );
        },
      ),
    );
  }
}

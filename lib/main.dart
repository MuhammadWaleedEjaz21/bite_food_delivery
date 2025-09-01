import 'package:bite_food_delivery/Screens/account_screen.dart';
import 'package:bite_food_delivery/Screens/home_screen.dart';
import 'package:bite_food_delivery/Screens/search_screen.dart';
import 'package:bite_food_delivery/Widgets/custom_bottom_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<CustomBottomItem> screens = [
      CustomBottomItem(
        title: 'Home',
        icon: Icons.home_outlined,
        selectedicon: Icons.home,
        pages: HomeScreen(),
      ),
      CustomBottomItem(
        title: 'Search',
        icon: Icons.search_outlined,
        selectedicon: Icons.search,
        pages: SearchScreen(),
      ),
      CustomBottomItem(
        title: 'Account',
        icon: Icons.person_outline,
        selectedicon: Icons.person,
        pages: AccountScreen(),
      ),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => Scaffold(
          body: Consumer(
            builder: (context, ref, child) {
              final currentIndex = ref.watch(currentIndexProvider);
              return screens[currentIndex].pages;
            },
          ),
          bottomNavigationBar: CustomBottomNavigationBar(items: screens),
        ),
      ),
    );
  }
}

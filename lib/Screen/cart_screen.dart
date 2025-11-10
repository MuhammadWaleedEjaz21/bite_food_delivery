import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Theme(
      data: darkTheme,
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: CustomAppBar(
              title: Text(
                'CART',
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
              backButton: true,
              trailing: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'EDIT',
                    style: TextStyle(
                      color: Colors.green,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.underline,
                      fontSize: 20.r,
                      decorationColor: Colors.green,
                    ),
                  ),
                ),
                15.horizontalSpace,
              ],
            ),
          );
        },
      ),
    );
  }
}

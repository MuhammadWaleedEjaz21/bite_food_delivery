import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/Widget/custom_cart_item.dart';
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
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.underline,
                      fontSize: 20.r,
                      decorationColor: Theme.of(
                        context,
                      ).appBarTheme.iconTheme?.color,
                    ),
                  ),
                ),
                15.horizontalSpace,
              ],
            ),
            body: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              itemBuilder: (context, index) => CustomCartItem(),
              separatorBuilder: (context, index) => 20.verticalSpace,
              itemCount: 5,
            ),
          );
        },
      ),
    );
  }
}

import 'package:bite_food_delivery/Widget/custom_app_bar.dart';
import 'package:bite_food_delivery/Widget/custom_menu_items.dart';
import 'package:bite_food_delivery/Widget/custom_menu_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Container(
          margin: EdgeInsets.all(22.r),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.person, color: Colors.white, size: 24.r),
        ),
        title: Text(
          'ACCOUNT',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        trailing: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).appBarTheme.surfaceTintColor,
            ),
            icon: Icon(
              size: 30.r,
              Icons.more_horiz,
              color: Theme.of(context).appBarTheme.iconTheme?.color,
            ),
          ),
          15.horizontalSpace,
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        children: [
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: CircleAvatar(
                  radius: 55.r,
                  backgroundColor: Colors.deepOrange,
                ),
              ),
              Flexible(
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text(
                    'Waleed Ejaz',
                    style: Theme.of(context).listTileTheme.titleTextStyle,
                  ),
                  subtitle: Text(
                    'm.waleedejaz2003@gmail.com',
                    style: Theme.of(context).listTileTheme.subtitleTextStyle,
                  ),
                ),
              ),
            ],
          ),
          30.verticalSpace,
          CustomMenuSection(
            items: [
              CustomMenuItems(icon: Icons.person_outline, title: 'Profile'),
              CustomMenuItems(
                title: 'Address',
                icon: Icons.location_on_outlined,
              ),
            ],
          ),
          15.verticalSpace,
          CustomMenuSection(
            items: [
              CustomMenuItems(
                title: 'Cart',
                icon: Icons.shopping_cart_outlined,
              ),
              CustomMenuItems(title: 'Favourite', icon: Icons.favorite_border),
              CustomMenuItems(
                title: 'Notification',
                icon: Icons.notifications_none_outlined,
              ),
              CustomMenuItems(
                title: 'Payment Option',
                icon: Icons.payment_outlined,
              ),
            ],
          ),
          15.verticalSpace,
          CustomMenuSection(
            items: [
              CustomMenuItems(
                title: 'FAQs',
                icon: Icons.question_answer_outlined,
              ),
              CustomMenuItems(
                title: 'Support',
                icon: Icons.support_agent_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

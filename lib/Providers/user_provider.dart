import 'package:bite_food_delivery/Models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dummyuser = StateProvider<UserModel>(
  (ref) => UserModel(
    username: 'Waleed Ejaz',
    email: 'm.waleedejaz2003@gmail.com',
    phonenumber: '+923009633165',
    address: '18-A Shalimar Colony Bosan Road Multan, Punjab, Pakistan',
  ),
);

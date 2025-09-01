import 'package:flutter_riverpod/flutter_riverpod.dart';

final timeProvider = StateProvider<String>((ref) {
  if (DateTime.now().hour < 12) {
    return 'Morning';
  } else if (DateTime.now().hour < 17) {
    return 'Afternoon';
  } else {
    return 'Evening';
  }
});

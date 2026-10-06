import 'package:flutter/material.dart';

import '../main_screen.dart';
import '../pages/detail_page.dart';
import '../pages/sample_page.dart';
import '../pages/profile_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String detail = '/detail';
  static const String sample = '/sample';
  static const String profile = '/profile';

  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const MainScreen(),
    detail: (context) => const DetailPage(),
    sample: (context) => const SamplePage(),
    profile: (context) => const ProfilePage(),
  };
}

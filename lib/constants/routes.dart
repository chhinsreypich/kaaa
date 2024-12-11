import 'package:flutter/material.dart';
import 'package:troubling/pages/confirmation_page.dart';
import 'package:troubling/pages/email_sending.dart';
import 'package:troubling/pages/record_page.dart';
// import '../pages/homepage.dart';


class AppRoutes {
  static const String initial = '/';

  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => RecordPage(),
    // 다른 페이지 추가
  };
}

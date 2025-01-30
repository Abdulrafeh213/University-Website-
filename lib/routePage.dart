import 'package:flutter/widgets.dart' show Widget, BuildContext;
import 'package:project/ContactUs/ContactUs.dart';
import 'package:project/Home/MyHomePage.dart';
import 'package:project/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
      Routes.Home: (_) => MyHomePage(),
      Routes.ContactUs: (_) => ContactUs(),
    };

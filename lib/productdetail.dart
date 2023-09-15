import 'package:flutter/material.dart';

import 'main.dart';

Route onGenerateRoute(RouteSettings settings) {

  if (settings.name == MyHomePage.pageName) {
    return MaterialPageRoute(
      builder: (context) => const MyHomePage(title: 'My Page'),
    );
  
  } else {
    return MaterialPageRoute(
      builder: (context) => const Text('Error'),
    );
  }
}
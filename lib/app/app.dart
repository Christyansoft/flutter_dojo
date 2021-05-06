import 'package:flutter/material.dart';
import 'package:flutter_dojo/app/ui/people/pages/home/home_page.dart';

import 'ui/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoutes,
      theme: appTheme(),
      initialRoute: '/',
    );
  }
}

Route generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => HomePage());
  }
}

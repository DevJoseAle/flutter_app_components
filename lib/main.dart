import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/pages/screens.dart';
import 'package:fl_components/routes/route_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,

      routes: AppRoutes.getAppRoutes(),

      onGenerateRoute: AppRoutes.onGenerateRoute,

      theme: AppTheme.lightTheme,

    );
  }
}
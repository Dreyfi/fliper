import 'package:fliper/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FliperTheme.buildTheme(context),
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: 'Fliper',
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
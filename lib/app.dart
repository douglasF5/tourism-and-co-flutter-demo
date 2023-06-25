import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import '/style.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const LocationDetail(),
        theme: ThemeData(
            appBarTheme: const AppBarTheme(titleTextStyle: Styles.navBarTitle),
            textTheme: TextTheme(
              titleMedium: Styles.headerLarge,
              bodyMedium: Styles.textDefault,
            )));
  }
}

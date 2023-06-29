import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import '/screens/locations/locations.dart';
import '/style.dart';

const locationsRoute = '/';
const locationDetailRoute = '/location_detail';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: _getTheme());
  }

  ThemeData _getTheme() {
    return ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            titleTextStyle: Styles.appBarTextStyle),
        textTheme: const TextTheme(
          titleMedium: Styles.titleTextStyle,
          titleSmall: Styles.subTitleTextStyle,
          bodyMedium: Styles.body1TextStyle,
          bodySmall: Styles.captionTextStyle,
        ));
  }
}

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case locationsRoute:
        return MaterialPageRoute(builder: (_) => const Locations());
      case locationDetailRoute:
        if (args is int) {
          return MaterialPageRoute(builder: (_) => LocationDetail(args));
        }
      default:
        return MaterialPageRoute(builder: (_) => const Locations());
    }
    return null;
  }
}

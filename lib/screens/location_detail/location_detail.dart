import '/screens/location_detail/text_section.dart';
import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextSection(Colors.red),
              TextSection(Colors.green),
              TextSection(Colors.orange)
            ]));
  }
}

import '/screens/location_detail/image_banner.dart';
import '/screens/location_detail/text_section.dart';
import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Location detail"),
        ),
        body: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner("assets/images/fuji.jpg"),
              TextSection("This is title", "This is the body"),
              TextSection("This is title", "This is the body"),
              TextSection("This is title", "This is the body"),
            ]));
  }
}

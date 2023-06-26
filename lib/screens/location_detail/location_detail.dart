import '/screens/location_detail/image_banner.dart';
import '/screens/location_detail/text_section.dart';
import 'package:flutter/material.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;
  const LocationDetail(this._locationID, {super.key});

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(location.imagePath),
              ...textSections(location)
            ]));
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) {
      return TextSection(fact.title, fact.text);
    }).toList();
  }
}

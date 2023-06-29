import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';
import '../../widgets/location_tile_info.dart';
import '/screens/location_detail/text_section.dart';

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
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ImageBanner(location.imagePath, height: 200.0),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: LocationTileInfo(location),
                ),
                ...textSections(location)
              ])),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) {
      return TextSection(fact.title, fact.text);
    }).toList();
  }
}

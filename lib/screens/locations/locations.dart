import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: ListView(
          children: locations
              .map(
                (loc) => GestureDetector(
                  child: Text(loc.name),
                  onTap: () => _onLocationTap(context, loc.id),
                ),
              )
              .toList()),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.of(context).pushNamed(locationDetailRoute, arguments: locationId);
  }
}

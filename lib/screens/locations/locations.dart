import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';
import 'tile_overlay.dart';
import '../../style.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 80.0,
        elevation: 0.0,
        title: const Padding(
          padding: EdgeInsets.only(top: 24.0),
          child: Text(
            'Tourism & Co',
          ),
        ),
        titleTextStyle: Styles.appBarTextStyleHome,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        itemCount: locations.length,
        itemBuilder: ((context, index) =>
            _itemBuilder(context, locations[index])),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      child: SizedBox(
          height: 250.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Stack(
                children: [
                  ImageBanner(location.imagePath, height: 250.0),
                  TileOverlay(location),
                ],
              ),
            ),
          )),
      onTap: () => _onLocationTap(context, location.id),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.of(context).pushNamed(locationDetailRoute, arguments: locationId);
  }
}

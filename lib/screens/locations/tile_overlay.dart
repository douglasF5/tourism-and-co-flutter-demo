import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../widgets/location_tile_info.dart';

class TileOverlay extends StatelessWidget {
  final Location location;

  const TileOverlay(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [
                0.0,
                0.5,
                1.0
              ],
                  colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.0)
              ])),
          child: LocationTileInfo(location, darkTheme: true),
        )
      ],
    );
  }
}

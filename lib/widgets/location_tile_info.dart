import 'package:flutter/material.dart';
import '../models/location.dart';
import '../style.dart';
import 'spacer_custom.dart';

const locationTileHeight = 80.0;

class LocationTileInfo extends StatelessWidget {
  final Location location;
  final bool darkTheme;

  const LocationTileInfo(this.location, {this.darkTheme = false, super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = darkTheme ? Styles.textColorLight : Styles.textColorDark;
    final accentColor = darkTheme
        ? const Color.fromARGB(255, 255, 151, 144)
        : Styles.textColorAccent;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Styles.defaultPaddingM),
      height: locationTileHeight,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location.name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: textColor),
            ),
            const SpacerCustom(4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  location.tourPackageName,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: textColor),
                ),
                Text(
                  location.userItinerarySummary,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: accentColor),
                ),
              ],
            ),
          ]),
    );
  }
}

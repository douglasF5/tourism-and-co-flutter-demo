import 'package:flutter/material.dart';

class SpacerCustom extends StatelessWidget {
  final double hSpace;
  final double vSpace;

  const SpacerCustom(this.hSpace, {this.vSpace = 0.0, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: hSpace,
      height: vSpace == 0.0 ? hSpace : vSpace,
    );
  }
}

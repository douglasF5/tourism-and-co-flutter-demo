import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;
  final double? height;

  const ImageBanner(this._assetPath, {this.height = 200.0, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: height),
      height: height,
      decoration: const BoxDecoration(color: Colors.grey),
      child: Image.asset(_assetPath, fit: BoxFit.cover),
    );
  }
}

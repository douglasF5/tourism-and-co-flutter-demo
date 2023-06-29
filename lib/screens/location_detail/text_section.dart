import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _defaultPad = 16.0;

  const TextSection(this._title, this._body, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding:
                const EdgeInsets.fromLTRB(_defaultPad, 16.0, _defaultPad, 0.0),
            child:
                Text(_title, style: Theme.of(context).textTheme.titleMedium)),
        Container(
            padding: const EdgeInsets.fromLTRB(
                _defaultPad, 10.0, _defaultPad, _defaultPad),
            child: Text(_body, style: Theme.of(context).textTheme.bodyMedium)),
      ],
    );
  }
}

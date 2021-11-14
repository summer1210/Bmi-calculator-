import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({required this.gendericon, required this.label});
  final IconData gendericon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gendericon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          label,
          style: klabeltext,
        )
      ],
    );
  }
}

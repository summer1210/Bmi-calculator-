import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
        )),
        color: kbottomcolor,
        margin: EdgeInsets.only(top: 10),
        height: kbottomheight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10),
      ),
    );
  }
}

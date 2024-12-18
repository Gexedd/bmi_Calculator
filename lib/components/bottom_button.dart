import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onTap});

  final void Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              "$buttonTitle",
              style: kLargeButtonTextStyle,
            )),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
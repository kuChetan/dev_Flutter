import 'package:flutter/material.dart';

import '../constants.dart';



class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTite, required this.onTap});
  final String buttonTite;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) =>ResultPage()));
      // },
      child: Container(
        child: Center(
          child: Text(
            buttonTite,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kButtomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kButtomContainerHeight,
      ),
    );
  }
}
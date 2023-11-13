import 'package:flutter/material.dart';
import 'dimen_constants.dart';


class VerticalSpace extends StatelessWidget {
  const VerticalSpace({Key? key, this.spaceAmount = DimenConstant.MEDIUM}) : super(key: key);
  final double spaceAmount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0,
      height: spaceAmount,
    );
  }
}
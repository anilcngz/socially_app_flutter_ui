import 'package:flutter/material.dart';
import 'package:socially_app_flutter_ui/config/colors.dart';
import 'dart:math' as math;

class MessageDetailBackground extends StatelessWidget {
  const MessageDetailBackground({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: size.height * 0.35,
              decoration: BoxDecoration(
                color: k2MainThemeColor,
                borderRadius: BorderRadius.circular(34.0),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: -150,
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                height: 465,
                width: 473,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: kWhite),
                  borderRadius: BorderRadius.circular(152.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: -180,
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                height: 465,
                width: 473,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: kWhite),
                  borderRadius: BorderRadius.circular(152.0),
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:socially_app_flutter_ui/config/colors.dart';
import 'dart:math' as math;

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -20,
            left: -480,
            child: Transform.rotate(
              angle: -math.pi / 4,
              child: Container(
                height: 469,
                width: 680,
                decoration: BoxDecoration(
                  color: k2MainThemeColor,
                  borderRadius: BorderRadius.circular(152.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: -20,
            left: -480,
            child: Transform.rotate(
              angle: -math.pi / 4,
              child: Container(
                width: 504,
                height: 564,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: kWhite),
                  borderRadius: BorderRadius.circular(152.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: -480,
            child: Transform.rotate(
              angle: -math.pi / 4,
              child: Container(
                width: 453,
                height: 537,
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

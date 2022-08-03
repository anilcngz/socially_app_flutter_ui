import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:socially_app_flutter_ui/config/colors.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: size.height * -0.3,
            left: size.height * -0.65,
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                height: size.height,
                width: size.height,
                padding: const EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(155.0),
                  border: Border.all(width: 1.0, color: k3AccentLines),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(152.0),
                    color: k2MainThemeColor,
                  ),
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

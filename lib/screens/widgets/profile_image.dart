import 'package:flutter/material.dart';
import 'package:socially_app_flutter_ui/config/colors.dart';

// This widget will be used in message detail, thats why i moved it to widgets folder.
class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.radius,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1.0, color: kBlack),
      ),
      child: CircleAvatar(
        backgroundImage: const AssetImage('assets/images/profile_image.jpg'),
        radius: radius,
      ),
    );
  }
}

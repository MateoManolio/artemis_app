import 'package:flutter/material.dart';
import 'package:artemis_app/src/presentation/widgets/safe_svg_picture.dart';

class WelcomeAvatar extends StatelessWidget {
  static const String avatarPath = 'assets/svg/login.svg';
  const WelcomeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 270,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: SafeSvgPicture.asset(avatarPath),
    );
  }
}

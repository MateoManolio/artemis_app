import 'package:flutter/material.dart';
import 'package:artemis_app/src/presentation/widgets/safe_svg_picture.dart';

class WelcomeAvatar extends StatelessWidget {
  static const String avatarPath = 'assets/svg/login.svg';
  static const double avatarSize = 270.0;
  
  const WelcomeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorScheme.primaryContainer,
      ),
      child: SafeSvgPicture.asset(avatarPath),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Widget que carga un SVG de forma segura con manejo de errores
class SafeSvgPicture extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit fit;

  const SafeSvgPicture.asset(
    this.assetPath, {
    super.key,
    this.width,
    this.height,
    this.color,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return SvgPicture.asset(
          assetPath,
          width: width,
          height: height,
          colorFilter: color != null
              ? ColorFilter.mode(color!, BlendMode.srcIn)
              : null,
          fit: fit,
          placeholderBuilder: (context) => Icon(
            Icons.image_outlined,
            size: width ?? height ?? 24,
            color: color ?? Colors.grey.shade400,
          ),
        );
      },
    );
  }
}

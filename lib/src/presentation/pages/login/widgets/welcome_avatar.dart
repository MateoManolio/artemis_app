import 'package:flutter/material.dart';

class WelcomeAvatar extends StatelessWidget {
  const WelcomeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Person body (blue shirt)
          Positioned(
            bottom: 0,
            child: Container(
              width: 110,
              height: 85,
              decoration: BoxDecoration(
                color: const Color(0xFF1976D2), // Blue shirt
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: CustomPaint(
                painter: PersonPainter(),
              ),
            ),
          ),
          // Graduation cap
          Positioned(
            top: 0,
            child: Container(
              width: 100,
              height: 25,
              decoration: BoxDecoration(
                color: const Color(0xFF1976D2), // Cap color
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Stack(
                children: [
                  // Yellow tassel on the right
                  Positioned(
                    top: 3,
                    right: 8,
                    child: Container(
                      width: 2,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom painter for person face
class PersonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black87
      ..style = PaintingStyle.fill;

    // Eyes (two dots)
    canvas.drawCircle(
      Offset(size.width * 0.3, size.height * 0.25),
      3,
      paint,
    );
    canvas.drawCircle(
      Offset(size.width * 0.7, size.height * 0.25),
      3,
      paint,
    );

    // Smile (curved line)
    final path = Path()
      ..moveTo(size.width * 0.2, size.height * 0.5)
      ..quadraticBezierTo(
        size.width * 0.5,
        size.height * 0.65,
        size.width * 0.8,
        size.height * 0.5,
      );

    final paintStroke = Paint()
      ..color = Colors.black87
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(path, paintStroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
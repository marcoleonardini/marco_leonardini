import 'package:flutter/material.dart';

class BorderCornerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint.color = Colors.deepOrange;
    // paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 3.0;

    canvas.drawLine(Offset(75.0, 0.0), Offset(0.0, 0.0), paint);
    canvas.drawLine(Offset(0.0, 0.0), Offset(0.0, 75.0), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw true;
  }
}

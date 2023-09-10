import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white 
      ..strokeWidth = 1.0;  

    final startPoint = Offset(0, 0); 
    final endPoint = Offset(0, size.height); 

    canvas.drawLine(startPoint, endPoint, paint); 
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  
}


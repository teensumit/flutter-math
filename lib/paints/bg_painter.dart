
import 'package:flutter/material.dart';

class BgPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    print(height);
    print(width);
    Paint mainContentPaint = Paint();
    Paint mainBgPaint = Paint();


    Path bgPath = Path();
    bgPath.addRect(Rect.fromLTRB(0, 0, width,  height));
    mainBgPaint.color = Colors.black.withOpacity(0.8);
    canvas.drawPath(bgPath, mainBgPaint);

    Path ovalPath = Path();
    ovalPath.moveTo(0, height*.2);
    ovalPath.quadraticBezierTo(width*.2, height*.2, width*.5, height*.5);
    ovalPath.quadraticBezierTo(width*0.2, height, 0, height);
    ovalPath.close();
    mainContentPaint.color=Colors.red;
    
    canvas.drawPath(ovalPath, mainContentPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
    throw UnimplementedError();
  }
  
}
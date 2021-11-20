import 'dart:math';

import 'package:flutter/material.dart';

class CustomPaintClass1 extends StatelessWidget {
  const CustomPaintClass1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 300,
          width: 400,
          child: CustomPaint(
            painter: MyPaint(),
          ),
        ),
      )
    );
  }
}
class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // print("object");
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;
    canvas.drawRect(
      Rect.fromPoints(const Offset(0,0), Offset(size.height, size.width))
      , myPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
    throw UnimplementedError();
  }
  
}
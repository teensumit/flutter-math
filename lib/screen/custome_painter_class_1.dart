import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttermath/paints/bg_painter.dart';

class CustomPaintClass1 extends StatelessWidget {
  const CustomPaintClass1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: CustomPaint(
          painter: BgPainter(),
        ),
      )
    );
  }
}
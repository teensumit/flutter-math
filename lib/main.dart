import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttermath/learn/d_generative.dart';
import 'package:fluttermath/screen/custome_painter_class_1.dart';

void main() {
  runApp(const MyApp());
}
// void main() => RenderingFlutterBinding(
//       root: RenderPositionedBox(
//         alignment: Alignment(.1, -.2),
//         child: RenderCustomPaint(painter: Colored()),
//       ),
//     );
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>CustomPaintClass1()
      },
    );
  }
}

import 'package:bmicalculator/view/bmiview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/controller.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       ChangeNotifierProvider(
        create: (context) => BmiCont(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Bmiview(),
        ),

    );
  }
}
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class Onb extends StatelessWidget{
  const Onb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:IntroductionScreen(
        pages: [
          PageViewModel(
            
            title: "Empower yourself towards a fitter life",

            
          )
        ],
      )

    );
  }


}
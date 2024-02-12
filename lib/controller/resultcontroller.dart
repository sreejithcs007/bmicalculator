

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rescont extends ChangeNotifier{

  dynamic _result = 0;

  get res => _result;

  getResult(height,weight){
    var h = height / 100;
    var heigh = h*h;
    var res1 = (weight / heigh);
    _result = res1;
    if(_result < 18.5){
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Underweight",style: GoogleFonts.notoSerif(color: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${_result.toStringAsFixed(0)}",style: GoogleFonts.notoSerif(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Under Weight BMI Range :",style: GoogleFonts.notoSerif(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Less than 18.5 Kg/m^2",style: GoogleFonts.notoSerif(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    }
    else if(_result >=18.5 && res<=24.9){
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Healthy Weight ",style: GoogleFonts.notoSerif(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${_result.toStringAsFixed(0)}",style: GoogleFonts.notoSerif(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Normal Weight BMI Range :",style: GoogleFonts.notoSerif(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("18.5 - 25 Kg/m^2",style: GoogleFonts.notoSerif(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );

    }
    else if( _result >= 25 && res <= 29.9){
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Overweight",style: GoogleFonts.notoSerif(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${_result.toStringAsFixed(0)}",style: GoogleFonts.notoSerif(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Over Weight BMI Range :",style: GoogleFonts.notoSerif(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("25 - 29.9 Kg/m^2",style: GoogleFonts.notoSerif(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );

    }
    else{
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Obesity",style: GoogleFonts.notoSerif(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${_result.toStringAsFixed(0)}",style: GoogleFonts.notoSerif(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Over Weight BMI Range :",style: GoogleFonts.notoSerif(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Above 30 Kg/m^2",style: GoogleFonts.notoSerif(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            ),


          ],
        ),
      );
    }

  }




}
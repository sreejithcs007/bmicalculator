import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';

class Result extends StatelessWidget {
  dynamic height;
  dynamic weight;
  dynamic age;
  dynamic res = 0;
  late dynamic result;

  Result(
    this.height,
    this.weight,
    this.age,
  );

  @override
  Widget build(BuildContext context) {
    var Bcon = Provider.of<BmiCont>(context);

    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF111328),
          appBar: AppBar(
            backgroundColor: const Color(0xFF111328),
            title: Text(
              " BMI CALCULATOR ",
              style: GoogleFonts.libreBaskerville(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
            elevation: 1,
          ),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    "Your Result ",
                    style: GoogleFonts.notoSerif(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF1F2544).withOpacity(0.6),
                      ),
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: Column(children: [
                        getResult(height, weight),
                      ])),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Bcon.ispassed(true);
                  },
                  shape: const StadiumBorder(),
                  color: Colors.red,
                  child: Text("RE-CALCULATE YOUR BMI",
                      style: GoogleFonts.notoSerif(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          )),
    );
  }

  getResult(hight1, weight1) {
    print("e");
    print(hight1);
    print(weight1);
    var h = hight1 / 100;
    var heigh = h * h;
    res = (weight1 / heigh);
    result = res;

    if (res < 18.5) {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Underweight",
                  style: GoogleFonts.notoSerif(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${result.toStringAsFixed(0)}",
                  style: GoogleFonts.notoSerif(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Under Weight BMI Range :",
                  style: GoogleFonts.notoSerif(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Less than 18.5 Kg/m^2",
                  style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    } else if (res >= 18.5 && res <= 24.9) {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Healthy Weight ",
                  style: GoogleFonts.notoSerif(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${result.toStringAsFixed(0)}",
                  style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Normal Weight BMI Range :",
                  style: GoogleFonts.notoSerif(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("18.5 - 25 Kg/m^2",
                  style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    } else if (res >= 25 && res <= 29.9) {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Overweight",
                  style: GoogleFonts.notoSerif(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${result.toStringAsFixed(0)}",
                  style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Over Weight BMI Range :",
                  style: GoogleFonts.notoSerif(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("25 - 29.9 Kg/m^2",
                  style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Obesity",
                  style: GoogleFonts.notoSerif(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${result.toStringAsFixed(0)}",
                  style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Over Weight BMI Range :",
                  style: GoogleFonts.notoSerif(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Above 30 Kg/m^2",
                  style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    }
  }
}

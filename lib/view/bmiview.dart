import 'package:bmicalculator/controller/controller.dart';
import 'package:bmicalculator/view/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() {
  runApp(MyApp3());
}
class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => BmiCont(),
        child: Bmiview(),
      ),
    );
  }
}
class Bmiview extends StatelessWidget {
  String? res;

  Bmiview({super.key});

  @override
  Widget build(BuildContext context) {
    var Bcon = Provider.of<BmiCont>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF111328),
        appBar: AppBar(
          backgroundColor: const Color(0xFF111328),
          title: Center(
            child: Text(
              " BMI CALCULATOR ",
              style: GoogleFonts.libreBaskerville(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
          elevation: 1,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Bcon.selectedgender('male');
                            if (Bcon.sel == true) {
                              res = 'male';
                            } else {
                              res = 'female';
                            }
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              color: res == 'male'
                                  ? const Color(0xFF1F2544)
                                  : const Color(0xFF1F2544).withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.male,
                                  size: 75,
                                  color: Colors.white,
                                ),
                                Text(
                                  "MALE",
                                  style: GoogleFonts.notoSerif(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Bcon.selectedgender('female');
                            if (Bcon.sel == true) {
                              res = 'male';
                            } else {
                              res = 'female';
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              color: res == 'female'
                                  ? const Color(0xFF1F2544)
                                  : const Color(0xFF1F2544).withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: MediaQuery.of(context).size.height / 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.female,
                                  size: 75,
                                  color: Colors.white,
                                ),
                                Text(
                                  "FEMALE",
                                  style: GoogleFonts.notoSerif(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F2544).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("HEIGHT",
                            style: GoogleFonts.notoSerif(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${Bcon.hight.toStringAsFixed(0)}",
                            style: GoogleFonts.notoSerif(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("\tcm",
                              style: GoogleFonts.notoSerif(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SfSlider(
                        value: Bcon.hight.toDouble(),
                        min: 0.0,
                        interval: 50,

                        max: 300.0,
                        //enableTooltip: true,

                        onChanged: (value) {
                          Provider.of<BmiCont>(context, listen: false)
                              .height(value);
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                //color: Colors.red,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, top: 30, right: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F2544).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("WEIGHT",
                                style: GoogleFonts.notoSerif(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${Bcon.weight1} ",
                                  style: GoogleFonts.notoSerif(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\tKg",
                                  style: GoogleFonts.notoSerif(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: MaterialButton(
                                    onPressed: () {
                                      Provider.of<BmiCont>(context, listen: false)
                                          .subWeight();
                                    },
                                    child: CircleAvatar(
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.2),
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 20,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  child: MaterialButton(
                                    onPressed: () {
                                      Provider.of<BmiCont>(context, listen: false)
                                          .addWeight();
                                    },
                                    child: CircleAvatar(
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.2),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                        left: 10,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F2544).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("AGE",
                                style: GoogleFonts.notoSerif(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text("${Bcon.age1}",
                                style: GoogleFonts.notoSerif(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    Provider.of<BmiCont>(context, listen: false)
                                        .subAge();
                                  },
                                  child: CircleAvatar(
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.2),
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Provider.of<BmiCont>(context, listen: false)
                                        .addAge();
                                  },
                                  child: CircleAvatar(
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.2),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0, bottom: 5),
                child: MaterialButton(
                  onPressed: () {
                    if (Bcon.hight != 0 && Bcon.age1 != 0) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Result(
                                Bcon.hight,
                                Bcon.weight1,
                                Bcon.age1,
                              )));
                      Bcon.ispassed(true);
                      // Bcon.age1;
                      // Bcon.hight;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Enter your height and age")));
                    }
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 20,
                  shape: const StadiumBorder(),
                  color: Colors.red,
                  child: Text("CALCULATE YOUR BMI",
                      style: GoogleFonts.notoSerif(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

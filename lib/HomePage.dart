import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomcontainerheight = 80.0;
const activecardcolour = Color(0xFF0F432D);
const inactivecardcolour = Color(0xFF0F332D);
const bottomcontainercolour = Color(0xFFEB155);

enum Gender {
  male,
  female,
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender selectedGender = Gender.male;
  int hight = 180;
  // Color maelcardcolour=inactivecardcolour;
  // Color femaleardcolour=inactivecardcolour;
  // void updatecolour(Gender selectedgender ){
  //   if (selectedgender==Gender.male){
  //     if(maelcardcolour==inactivecardcolour){
  //       maelcardcolour=activecardcolour;
  //       femaleardcolour=inactivecardcolour;
  //     }
  //     else{
  //       maelcardcolour==inactivecardcolour;
  //     }
  //   }
  //   else if(selectedgender==Gender.female){
  //     if(femaleardcolour==inactivecardcolour){
  //       femaleardcolour=activecardcolour;
  //       maelcardcolour=inactivecardcolour;
  //     }
  //     else{
  //       femaleardcolour=inactivecardcolour;
  //     }
  //
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(backgroundColor: const Color(0xFF0F132D)),
            body: Column(children: <Widget>[
              Expanded(
                  child: Row(children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        print("object");
                        // Colors.blueAccent;
                      });
                    },
                    child: Reusable(
                      colour: selectedGender == Gender.male
                          ? activecardcolour
                          : inactivecardcolour,
                      Cardchild:
                          Re1(icon: FontAwesomeIcons.mars, lable: 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      },
                      );
                    },
                    child: Reusable(
                      colour: selectedGender == Gender.female
                          ? activecardcolour
                          : inactivecardcolour,
                      Cardchild:
                          Re1(icon: FontAwesomeIcons.venus, lable: 'famel'),
                    ),
                  ),
                ),
              ],
                  ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Container(
                    // padding: const EdgeInsets.only(top: 10,left: 125),
                    child: Text(
                      "$hight",
                      style: TextStyle(
                        // color:  Color(0xFFDCBC3C),
                        fontSize: 49,
                      ),
                    ),
                  ),
                  Text("cm")
                ],
              ),
              // SliderTheme(
              //   data: SliderTheme.of(context).copyWith(
              //   activeTrackColor: Colors.white,
              //      thumbColor: Color(0xFFEB1555),
              //    overlayColor: Color(0x29EB15550),
              //      thumbShape: RoundSliderThumbShape(
              //         enabledThumbRadius: 15.0),
              //     overlayShape: RoundSliderOverlayShape(
              //       overlayRadius: 30.0),
              //   ),
              Slider(
                value: hight.toDouble(),
                min: 120,
                max: 220,
                onChanged: (double newValue) {
                  setState(() {
                    hight = newValue.round();
                  });
                },
              ),

              Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Reusable(
                          colour: const Color(0xFF0F132D),
                          Cardchild: Re1(
                              icon: FontAwesomeIcons.mars,
                              lable: 'Male'),
                        ),
                      ),
                      Expanded(
                        child: Reusable(
                          colour: const Color(0xFF0F132D),
                          Cardchild: Re1(
                              icon: FontAwesomeIcons.mars,
                              lable: 'Male'),
                        ),
                      ),
                    ],
                  ))
            ])),
              //  )



            );
  }
}

class Re1 extends StatelessWidget {
  Re1({required this.icon, required this.lable});
  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Reusable(
        colour: Color(0xFF0F232D),
        Cardchild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 60,
              color: const Color(0xFFDCBC3C),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              lable,
              style: const TextStyle(fontSize: 18.0, color: Color(0xFFDCBC3C)),
            )
          ],
        ),
      ),
    );
  }
}

class Reusable extends StatelessWidget {
  Reusable({required this.colour, required this.Cardchild});
  final Color colour;
  final Widget Cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Cardchild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

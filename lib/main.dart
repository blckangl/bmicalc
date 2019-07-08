import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_card.dart';
import 'icon_content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'BMI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 180;
  int weight = 80;
  int age = 20;
  int activity = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child:Text(widget.title)),
          backgroundColor: Colors.red[700],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: InputCard(
                      colour: Colors.greenAccent[700],
                      cardChild: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.greenAccent[700],
                          radius: 50,
                          child: Center(
                            child: Text('60',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: InputCard(
                      colour: Colors.red[700],
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    )),
                    Expanded(
                      child: new InputCard(
                        colour: Colors.greenAccent[700],
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: new InputCard(
                  colour: Colors.greenAccent[700],
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text('$height',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text('cm',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 250.0,
                        activeColor: Colors.red[700],
                        inactiveColor: Colors.white,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new InputCard(
                        colour: Colors.greenAccent[700],
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('WEIGHT',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text('$weight',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  buttonIcon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconButton(
                                    buttonIcon: FontAwesomeIcons.plus),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: new InputCard(
                        colour: Colors.greenAccent[700],
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('AGE',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text('$age',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  buttonIcon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconButton(
                                    buttonIcon: FontAwesomeIcons.plus),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: new InputCard(
                        colour: Colors.greenAccent[700],
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('ACTIVITY',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text('$activity',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  buttonIcon: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconButton(
                                    buttonIcon: FontAwesomeIcons.plus),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                 
                  ],
                ),
              ),
                 GestureDetector(
                      onTap: (){
                        print("ahla");
                      },
                      child: Container(
                        child: Center(child: Text('CALCULATE',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
                        color: Colors.red[700],
                        margin: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        height: 60,
                      ),
                    )
            ],
          ),
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.buttonIcon});

  final IconData buttonIcon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Colors.red[700],
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 40.0, height: 40.0),
      child: Icon(
        buttonIcon,
        color: Colors.white,
      ),
    );
  }
}

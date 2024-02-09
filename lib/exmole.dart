import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(MaterialApp(home: Light(), debugShowCheckedModeBanner: false,));
}

class Light extends StatefulWidget {
  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
      Container(
      color: Colors.brown,
      height: double.infinity, width: double.infinity,
      child: Column(
          children: [
            SizedBox(height: 20,),
            Row(mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(FontAwesomeIcons.backward, color: Colors.white,),
                SizedBox(width: 200,),
                Text('Light', style: TextStyle(color: Colors.white),),
                SizedBox(width: 200,),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text('Power'),
                    ToggleSwitch(
                      minWidth: 40.0,
                      cornerRadius: 20.0,
                      activeBgColors: [[Colors.white!], [Colors.black!]],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: ['', ''],
                      radiusStyle: true,
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                    Text('80%'),
                    Text('Brightness'),

                  ],
                )
              ],
            ),
            Row(
                children: [
                  Icon(Icons.light_mode_outlined),
                  Container(
                    height: 100,
                    width: 400,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Slider(
                            value: _currentSliderValue,
                            max: 100,
                            divisions: 6,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                          ),
                        ]
                    ),
                  ),
                  Icon(Icons.light_mode_outlined),
                ]
            )
          ])

    ),
    Positioned(
    width: 500,height: 400,
    top: 400,
    child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
    child: Container(
    color: Colors.grey,
    child: Column(
    children: [
    Row(
    children: [
    SizedBox(height: 20,),
    Text("Scedule"),
    SizedBox(width: 350,),
    Icon(Icons.add)
    ],
    ),
    Row(
    children: [
    SizedBox(height: 10,),
    Text("From"),
    SizedBox(width: 50,),
    Text("6:00 pm"),
    SizedBox(width: 50,),
    Text("To"),
    SizedBox(width: 50,),
    Text("11:00 pm"),
    SizedBox(width: 80,),
    Icon(Icons.delete),
    SizedBox(width: 20,),
    Icon(Icons.edit_note)

    ],
    )
    ],
    ),

    ),
    ),
    ),
    Positioned(
    width: 500,height: 400,
    top: 520,
    child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
    child: Container(
    color: Colors.white,

    ),
    ),
    ),
      ],
          ),
        );
  }
}
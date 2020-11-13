import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';

import 'calculations.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController value1 = TextEditingController();
    TextEditingController value2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider demo'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            TextFormField(
              controller: value1,
              onChanged: (String newValue) {
                value1.text = newValue;
              },
            ),
            TextFormField(
              controller: value2,
              onChanged: (String newValue) {
                value2.text = newValue;
              },
            ),
            RaisedButton(
              onPressed: () {
                print('Button pressed');
                print(double.parse(value1.text));
                print(double.parse(value2.text));
                var cal = context.read<Calculations>();
                cal.doAddition(
                    value1: double.parse(value1.text), value2: double.parse(value2.text));
              },
              child: Text('Calculate'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Consumer<Calculations>(
          builder: (BuildContext context, calculations, Widget child) {
            return Text(calculations.result != null ? calculations.result.toString() : '0');
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/palette.dart';
import 'package:flutter_application_1/widgets/degreeContainer.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.primaryColor,
        leading: Icon(
          Icons.cloud_circle_sharp,
          size: 50,
        ),
        actions: [
          Icon(
            Icons.search_rounded,
            size: 30,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 7, right: 7),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Palette.secondaryColor,
                Palette.black,
              ]),
        ),
        child: Column(
          children: [
            DegreeContainer(),
            SizedBox(height: 10,),
            // LineChart(
            //   LineChartData(),
            // ),

          ],
        ),
      ),
    );
  }
}

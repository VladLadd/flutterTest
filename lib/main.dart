import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(DemoRunTime());

class DemoRunTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("ME - event platform"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green, Colors.blue]),
            image: DecorationImage(
                image: AssetImage("assets/img/group_img_face.png"))),
        child: ListView(
          children: [
            Center(child: SvgPicture.asset("assets/img/gear.svg")),
            Container(
                alignment: Alignment.center,
                // color: Colors.black38,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                transform: Matrix4.rotationZ(25.2),
                child: Text(
                  'ToDo',
                  style: TextStyle(fontSize: 55.0, color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                    color: Colors.black38.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 5,
                      color: Colors.red,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38, spreadRadius: 5, blurRadius: 5)
                    ]))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.plus_one,
      //     color: Colors.white,
      //   ),
      //   backgroundColor: Colors.black,
      //   onPressed: () {
      //     var num = 1;
      //     print("ADDED" + (num++).toString());
      //   },
      // ),
    );
    return new MaterialApp(
        theme: ThemeData(accentColor: Colors.yellow), home: scaffold);
  }
}

// закончил на уроке 16 - https://www.youtube.com/watch?v=shp4ofT9QMM&list=PLyaYkfwvXhRKjYAIO4_J_IcHtAXUR_1ci&index=17

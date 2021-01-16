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
          gradient: LinearGradient(colors: [Colors.black54, Colors.blue[700]]),
          // image: DecorationImage(
          //     image: AssetImage("assets/img/group_img_face.png"))
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  decoration: BoxDecoration(
                      color: Colors.black38.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 5,
                        color: Colors.white,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            spreadRadius: 5,
                            blurRadius: 5)
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Вход',
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Регистрация',
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //   child: Center(child: SvgPicture.asset("assets/img/gear.svg")),
                // ),
                Container(
                  height: 200,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Login',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                )
              ],
            )
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

// закончил на уроке 24 - https://www.youtube.com/watch?v=UmKe98FvnvI&list=PLyaYkfwvXhRKjYAIO4_J_IcHtAXUR_1ci&index=24

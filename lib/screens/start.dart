import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;
    var scaffold = Scaffold(
      body: Container(
        color: isDark ? Colors.black87 : Colors.white,
        // color: Colors.black87,

        padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                "У вас пока нет заметок",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 48.0,
                    fontFamily: "YesevaOne",
                    color: isDark ? Colors.white : Colors.black87),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Нажмите на плюсик, чтобы создать первую",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 24.0,
                        color: isDark ? Colors.white70 : Colors.black87),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      // color: Colors.black12,
                      child: SizedBox(
                          child: SvgPicture.asset(isDark
                              ? "assets/img/corner-arrow-white.svg"
                              : "assets/img/corner-arrow-black.svg")),
                    )),
              ]),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: isDark ? Colors.black87 : Colors.white,
        ),
        backgroundColor: isDark ? Colors.white : Colors.black87,
        onPressed: () {
          var num = 1;
          print("ADDED" + (num++).toString());
        },
      ),
    );
    return scaffold;
  }
}

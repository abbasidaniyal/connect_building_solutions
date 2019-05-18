import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'package:flutter_web_ui/ui.dart' as prefix0;

class PageTop extends StatelessWidget {
  String title;
  PageTop({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: <Widget>[
        Opacity(
          opacity: 0.5,
                  child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/cover/cover.jpg",
                ),
                fit: BoxFit.fitWidth,

              ),
            ),
            child: BackdropFilter(
              filter: prefix0.ImageFilter.blur(sigmaX: 600.0, sigmaY: 1000.0),
            ),
            // child: Image.asset(
            //   "images/cover/cover.jpg",
            //   colorBlendMode: BlendMode.lighten,
            //   color: Colors.grey,

            //   // width: MediaQuery.of(context).size.width,
            //   height: 200,

            //   fit: BoxFit.fitWidth,
            // ),
          ),
        ),
        Container(
          alignment: Alignment(-1, 1),
          padding: EdgeInsets.all(10.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}

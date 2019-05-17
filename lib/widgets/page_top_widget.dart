import 'package:flutter_web/material.dart';

class PageTop extends StatelessWidget {
  String title;
  PageTop({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.25,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "images/cover/cover.jpg",
            colorBlendMode: BlendMode.lighten,
            color: Colors.grey,
            
            // width: MediaQuery.of(context).size.width,
            height: 200,
            
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          alignment: Alignment(-1,1),
          padding: EdgeInsets.all(10.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}

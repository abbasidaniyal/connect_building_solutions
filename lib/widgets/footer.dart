import 'dart:indexed_db';

import 'package:flutter_web/material.dart';

import '../pages/about_us_page.dart';
import '../pages/contact_us_page.dart';
import '../pages/gallery_page.dart';
import '../pages/home_page.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      color: Colors.black,
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  "Connect Building Solutions",
                  textScaleFactor: 1.5,
                  style: TextStyle(color: Colors.yellow),
                ),
              ),
              InkWell(
                child: Container(
                  width: 100.0,
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, w, s) {
                        return HomePage();
                      },
                    ),
                  );
                },
              ),
              InkWell(
                child: Container(
                  width: 100.0,
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      "About us",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, w, s) {
                        return AboutPage();
                      },
                    ),
                  );
                },
              ),
              InkWell(
                child: Container(
                  width: 100.0,
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      "Contact Us",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secomdaryAnimation) {
                        return ContactPage();
                      },
                    ),
                  );
                },
              ),
              InkWell(
                child: Container(
                  width: 100.0,
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      "Gallery",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, w, s) {
                        return GalleryPage();
                      },
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

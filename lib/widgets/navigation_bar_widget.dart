import 'package:connect_building_solutions/pages/about_us_page.dart';
import 'package:connect_building_solutions/pages/contact_us_page.dart';
import 'package:connect_building_solutions/pages/home_page.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';
import '../pages/gallery_page.dart';

class NavigationBar extends AppBar {
  BuildContext context;
  NavigationBar({this.context})
      : super(
          title: Text("Connect Building Solutions"),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[200],
          textTheme: TextTheme(
            body1: TextStyle(
              color: Colors.black,
            ),
            title: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            InkWell(
              child: Container(
                width: 100.0,
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text("Home"),
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
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text("About us"),
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
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text("Contact Us"),
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
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text("Gallery"),
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
        );
}

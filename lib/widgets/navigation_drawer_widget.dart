import 'package:flutter_web/material.dart';


import '../pages/about_us_page.dart';
import '../pages/contact_us_page.dart';
import '../pages/home_page.dart';
import '../pages/gallery_page.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          AppBar(
            title: Center(
              child: Text("Menu"),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            textTheme: TextTheme(
              body1: TextStyle(
                color: Colors.black,
              ),
              title: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: InkWell(
              child: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secomdaryAnimation) {
                      return HomePage();
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: InkWell(
              child: Text("About us"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secomdaryAnimation) {
                      return AboutPage();
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: InkWell(
              child: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
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
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: InkWell(
              child: Text("Gallery"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secomdaryAnimation) {
                      return GalleryPage();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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
      color: Colors.black,
      child: Row(
        children: <Widget>[
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
      ),
    );
  }
}

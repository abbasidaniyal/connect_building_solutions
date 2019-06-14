import 'package:flutter_web/material.dart';

import '../pages/about_us_page.dart';
import '../pages/contact_us_page.dart';
import '../pages/gallery_page.dart';
import '../pages/home_page.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          color: Colors.black.withOpacity(0.8),
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
                          pageBuilder:
                              (context, animation, secomdaryAnimation) {
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
                  // Row(
                  //   children: <Widget>[
                  //     Container(
                  //       color: Colors.black,
                  //       height: 30.0,
                  //       width: MediaQuery.of(context).size.width * 0.30,
                  //     ),
                  //     Container(
                  //       color: Theme.of(context).accentColor,
                  //       height: 30.0,
                  //       width: MediaQuery.of(context).size.width * 0.40,
                  //     ),
                  //     Container(
                  //       color: Colors.black,
                  //       height: 30.0,
                  //       width: MediaQuery.of(context).size.width * 0.30,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
              //SOCIAL PLATFORMS

              //COPYRIGHT

              // Row(
              //   children: <Widget>[
              //     IconButton(
              //       icon: Icon(Icons.camera),
              //       onPressed: (){

              //       },
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width  ,
          color: Colors.black,
          alignment: Alignment.center ,
          height: 40,
          child: Text(
            "Copyright 2019 © Conect Building Solutions Pvt Ltd. All Rights Reserved.",
            style: TextStyle(
              color: Colors.grey
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

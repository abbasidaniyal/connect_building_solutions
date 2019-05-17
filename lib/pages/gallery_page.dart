import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import '../widgets/navigation_bar_widget.dart';
import '../widgets/navigation_drawer_widget.dart';

import '../model/gallery_image.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  ScrollController controller = ScrollController(initialScrollOffset: 0.0);

  List<GalleryImage> images = [
    GalleryImage(
      filePath: 'DLF SOUTH POINT MALL.jpg',
    ),
    GalleryImage(
      filePath: 'P1010546.JPG',
    ),
    GalleryImage(
      filePath: 'IIMT,MEERUT.JPG',
    ),
    GalleryImage(
      filePath: 'PHOTO KLI.jpg',
    ),
    GalleryImage(
      filePath: '20130911_104650526_iOS.jpg',
    ),
    GalleryImage(
      filePath: 'image2.JPG',
    ),
    GalleryImage(
      filePath: 'Shipra mall 1.jpg',
    ),
    GalleryImage(
      filePath: '20150708_045117000_iOS.jpg',
    ),
    GalleryImage(
      filePath: 'IMG_1556.JPG',
    ),
    GalleryImage(
      filePath: 'Shipra Mall.jpg',
    ),
    GalleryImage(
      filePath: 'ADVANT.jpg',
    ),
    GalleryImage(
      filePath: 'MSX MALL,GREATER NOIDA.jpg',
    ),
    GalleryImage(
      filePath: 'cover.jpg',
    ),
    GalleryImage(filePath: 'Msx.jpg'),
  ];

  Color appBarColor = Colors.grey[200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          MediaQuery.of(context).size.width < 650 ? NavigationDrawer() : null,
      appBar: MediaQuery.of(context).size.width >= 650
          ? NavigationBar(
              context: context,
              color: appBarColor,
            )
          : AppBar(
              title: Center(
                child: Text("Connect Building Solutions"),
              ),
              backgroundColor: appBarColor,
              iconTheme: IconThemeData(color: Colors.black),
              textTheme: TextTheme(
                body1: TextStyle(
                  color: Colors.black,
                ),
                title: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(100.0),
            child: Text(
              "Gallery Page",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    (MediaQuery.of(context).orientation == Orientation.portrait)
                        ? 2
                        : 4,
                childAspectRatio: 1,
                crossAxisSpacing: 40.0,
                mainAxisSpacing: 50.0,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                  child: GridTile(
                    child: InkWell(
                      child: Card(
                        child: Image.asset(
                          "images/gallery/${images[index].filePath}",
                          fit: BoxFit.contain,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

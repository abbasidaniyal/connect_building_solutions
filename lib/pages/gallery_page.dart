import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import '../widgets/footer.dart';
import '../widgets/navigation_bar_widget.dart';
import '../widgets/navigation_drawer_widget.dart';
import '../widgets/page_top_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          MediaQuery.of(context).size.width < 650 ? NavigationDrawer() : null,
      appBar: MediaQuery.of(context).size.width >= 650
          ? NavigationBar(
              context: context,
            )
          : AppBar(
              title: Center(
                child: Text("Connect Building Solutions"),
              ),
              backgroundColor: Colors.grey[200],
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
      body: SingleChildScrollView(
              child: Column(

          children: <Widget>[
            PageTop(
              title: "Gallery",
            ),
            GridView.builder(
              shrinkWrap: true,
              // primary: false,
              controller: ScrollController(
                keepScrollOffset: false,
                initialScrollOffset: 0.0
              ),  
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    MediaQuery.of(context).orientation == Orientation.portrait
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
            Footer(),
            
          ],
        ),
      ),
      
    );
  }
}

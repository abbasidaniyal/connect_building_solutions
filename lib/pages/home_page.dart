import 'package:flutter_web/material.dart';

import '../widgets/navigation_bar_widget.dart';
import '../widgets/navigation_drawer_widget.dart';
import '../widgets/page_top_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController controller = ScrollController(initialScrollOffset: 0.0);

  Color appBarColor = Colors.grey[200];

  @override
  void initState() {
    super.initState();
    // controller.addListener(colourChange);
  }

  // void colourChange() {
  //   if (controller.offset > 10) {
  //     setState(() {
  //       appBarColor = Colors.transparent;
  //     });
  //   } else {
  //     setState(() {
  //       appBarColor = Colors.white;
  //     });
  //   }
  // }

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
      body: ListView(
        controller: controller,
        children: <Widget>[
          PageTop( title: "Home Page",),
          Center(
            child: Text("Home Page"),
          ),
        ],
      ),
    );
  }
}

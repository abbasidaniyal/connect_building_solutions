import 'package:flutter_web/material.dart';

import '../widgets/navigation_bar_widget.dart';
import '../widgets/navigation_drawer_widget.dart';
import '../widgets/page_top_widget.dart';
import '../widgets/footer.dart';
import '../widgets/attributes_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController controller = ScrollController();
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
            )
          : AppBar(
              title: Center(
                child: Image(
                  image: AssetImage("logo/logo_transparent.png"),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
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
        controller: controller,
        child: Column(
          children: <Widget>[
            PageTop(
              title: "Home Page",
            ),
            Center(
              child: Text("Home Page"),
            ),
            Attributes(),
            Footer(),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(
          Icons.arrow_upward,
          color: Colors.grey,
        ),
        onPressed: () {
          controller.jumpTo(0.0);
        },
      ),
    );
  }
}

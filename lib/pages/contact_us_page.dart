import 'package:flutter_web/material.dart';

import '../widgets/navigation_bar_widget.dart';
import '../widgets/navigation_drawer_widget.dart';
import '../widgets/page_top_widget.dart';
import '../widgets/footer.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Map<String, dynamic> formData = {};

  var key = GlobalKey<FormState>();

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
              backgroundColor: Colors.white,
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
            PageTop(title: "Contact Us"),
            Container(
              width: 200,
              child: Form(
                key: key,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(hintText: "Name"),
                      onSaved: (name) {
                        formData["Name"] = name;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email"),
                      onSaved: (email) {
                        formData["Email"] = email;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Contact"),
                      onSaved: (contact) {
                        formData["Contact"] = contact;
                      },
                    ),
                  ],
                ),
              ),
            ),
            RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                print(key.currentState.validate());
                key.currentState.save();
                print(formData.toString());
                key.currentState.reset();
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}

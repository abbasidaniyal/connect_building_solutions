import 'dart:html' as prefix0;

import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';

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
  ScrollController controller = ScrollController();

  var key = GlobalKey<FormState>();

  void formSubmit() {
    print(key.currentState.validate());
    if (key.currentState.validate()) {
      key.currentState.save();
      print(formData.toString());
      key.currentState.reset();
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                content: Text("Please Try Again"),
                title: Text("Invalid Details."),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Ok"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ]);
          });
    }
  }

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
                child:Image(
          image: AssetImage("logo/logo_transparent.png"),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height*0.03,
          ),),
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
        controller: controller,
        child: Column(
          children: <Widget>[
            PageTop(title: "Contact Us"),
            Container(
              padding: EdgeInsets.all(100),
              width: MediaQuery.of(context).size.width * 0.40,
              child: Form(
                key: key,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Name",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Error";
                          }
                        },
                        onSaved: (name) {
                          formData["Name"] = name;
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        onSaved: (email) {
                          formData["Email"] = email;
                        },
                        validator: (value) {
                          if (value.isEmpty || RegExp("@").hasMatch(value)) {
                            return "Error";
                          }
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Contact Number",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        onSaved: (contact) {
                          formData["Contact"] = contact;
                        },
                        validator: (value) {
                          if (value.isEmpty || int.tryParse(value).isNaN) {
                            return "Error";
                          }
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Query",

                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        onSaved: (query) {
                          formData["Query"] = query;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Error";
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RaisedButton(
              child: Text("Submit"),
              onPressed: formSubmit,
            ),
            Footer(),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.arrow_upward),
        onPressed: () {
          controller.animateTo(0,
              curve: Curves.easeIn, duration: Duration(milliseconds: 700));
        },
      ),
    );
  }
}

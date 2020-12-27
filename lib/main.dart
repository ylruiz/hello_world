// The material.dart package(labrary that contains reusable code)
// contains material widgets that implement Material Design(a visual design language)
import 'package:flutter/material.dart';

// @main() is the entry point for any Dart app
// @runApp()  inflates a widget and attaches it to the screen
void main() => runApp(MyApp());

// In Flutter are two types of widgets: stateless & statefull
// stateless widgets are used when you do not need to change the widget after its creation
// statefull widgets are used when their content(or state) needs to change.
// In Flutter, the widget tree is the way that you organize widgets in an app
class MyApp extends StatelessWidget {
  @override
  // @build() is automatically called when the widget is inserted into the widget tree
  // @build() returns a widget
  Widget build(BuildContext context) {
    return MaterialApp(
        // @title allows to define a title for your app
        title: 'Hello Worl Travel Title',
        // @home is what the user will see on the screen of the app
        // Scaffold widget represents a screen in a MaterialApp widget and contains several Material Design layout widgets
        home: Scaffold(
          // @appBar is a property that contains and application bar
          appBar: AppBar(
            title: Text('Hello World Travel App!'),
            backgroundColor: Colors.deepPurple,
          ),
          // @body is a property that contains the main content of the screen
          // Center is a positional widget that centers(horizontally & vertically) its content on the screen
          // Center takes only one child which can be a Column container widget
          body: Builder(
            builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  // @child is a property that allows to nest widgets inside other widgets
                  // Text is a widget to show text
                  child: Column(children: [
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Hello World Travel',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800],
                            ))),
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: Text('Discover the world',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.deepPurpleAccent,
                            ))),
                    Padding(
                        padding: EdgeInsets.all(15),
                        child: Image.network(
                          'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                          height: 300,
                        )),
                    Padding(
                        padding: EdgeInsets.all(15),
                        child: RaisedButton(
                          child: Text('Contact Us'),
                          onPressed: () => contactUs(context),
                        )),
                  ]),
                ),
              ),
            ),
          ),
        ));
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us hello@world.com'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}

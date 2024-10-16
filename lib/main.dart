import 'package:flutter/material.dart';
import 'package:flutterapp/Form.dart';
import 'package:flutterapp/alert.dart';
import 'package:flutterapp/autosizetext.dart';
import 'package:flutterapp/bmicalculator.dart';
import 'package:flutterapp/bottomnav.dart';
import 'package:flutterapp/bottomnav2.dart';
import 'package:flutterapp/bottomsheet.dart';
import 'package:flutterapp/bottomsheet2.dart';
import 'package:flutterapp/buttoncounter.dart';
import 'package:flutterapp/carousel_slider.dart';
import 'package:flutterapp/datatable.dart';
import 'package:flutterapp/datepicker.dart';
import 'package:flutterapp/datepicker2.dart';
import 'package:flutterapp/drawer.dart';
import 'package:flutterapp/dropdownbutton.dart';
import 'package:flutterapp/dropdownprint.dart';
import 'package:flutterapp/googlefonts.dart';
import 'package:flutterapp/gridview.dart';
import 'package:flutterapp/gridview2.dart';
import 'package:flutterapp/gridview3.dart';
import 'package:flutterapp/imageform.dart';
import 'package:flutterapp/imagepicker.dart';
import 'package:flutterapp/imagepicker2.dart';
import 'package:flutterapp/imagepicker3.dart';
import 'package:flutterapp/newpage11_images.dart';
import 'package:flutterapp/newpage19.dart';
import 'package:flutterapp/opacitywidget.dart';
import 'package:flutterapp/phpcrud.dart';
import 'package:flutterapp/phpdisplaycrud.dart';
import 'package:flutterapp/phplogin/phplogin.dart';
import 'package:flutterapp/phpregister.dart';
import 'package:flutterapp/printvalues.dart';
import 'package:flutterapp/radiobutton.dart';
import 'package:flutterapp/radiobutton2.dart';
import 'package:flutterapp/Calculator.dart';
import 'package:flutterapp/phplogin/register2insert.dart';
import 'package:flutterapp/sharedprefrences.dart';
import 'package:flutterapp/sharedprefrences2.dart';
import 'package:flutterapp/simpledialog.dart';
import 'package:flutterapp/slider_2.dart';
import 'package:flutterapp/splogin.dart';
import 'package:flutterapp/tabbar.dart';
import 'package:flutterapp/tabbar2.dart';
import 'package:flutterapp/table.dart';
import 'package:flutterapp/textcontroller.dart';
import 'package:flutterapp/textcontroller2.dart';
import 'package:flutterapp/textfield.dart';
import 'package:flutterapp/textfield2.dart';
import 'package:flutterapp/timepicker.dart';
import 'package:flutterapp/toastalert.dart';
import 'package:flutterapp/totalmenu.dart';
import 'package:flutterapp/validform.dart';
import 'package:flutterapp/validform2.dart';

import 'newpage.dart';
import 'newpage10_Tile.dart';
import 'newpage12.dart';
import 'newpage13.dart';
import 'newpage14_card.dart';
import 'newpage15.dart';
import 'newpage16_inkwell.dart';
import 'newpage17_Buttons_and_types.dart';
import 'newpage18part1.dart';
import 'newpage2.dart';
import 'newpage3.dart';
import 'newpage4.dart';
import 'newpage5.dart';
import 'newpage6_Stacking.dart';
import 'newpage7_listview.dart';
import 'newpage8.dart';
import 'newpage9.dart';
import 'newpage11_images.dart';
import 'nwepage18.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:bmicalculator(),
    );
  }
}
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutterapp/Form.dart';
import 'package:flutterapp/alert.dart';
import 'package:flutterapp/bmicalculator.dart';
import 'package:flutterapp/bottomsheet2.dart';
import 'package:flutterapp/dropdownbutton.dart';
import 'package:flutterapp/dropdownprint.dart';
import 'package:flutterapp/newpage.dart';
import 'package:flutterapp/newpage10_Tile.dart';
import 'package:flutterapp/newpage11_images.dart';
import 'package:flutterapp/newpage12.dart';
import 'package:flutterapp/newpage13.dart';
import 'package:flutterapp/newpage14_card.dart';
import 'package:flutterapp/newpage15.dart';
import 'package:flutterapp/newpage16_inkwell.dart';
import 'package:flutterapp/newpage17_Buttons_and_types.dart';
import 'package:flutterapp/newpage19.dart';
import 'package:flutterapp/newpage2.dart';
import 'package:flutterapp/newpage3.dart';
import 'package:flutterapp/newpage4.dart';
import 'package:flutterapp/newpage5.dart';
import 'package:flutterapp/newpage6_Stacking.dart';
import 'package:flutterapp/newpage7_listview.dart';
import 'package:flutterapp/newpage8.dart';
import 'package:flutterapp/newpage9.dart';
import 'package:flutterapp/nwepage18.dart';
import 'package:flutterapp/printvalues.dart';
import 'package:flutterapp/radiobutton2.dart';
import 'package:flutterapp/tabbar2.dart';
import 'package:flutterapp/textcontroller2.dart';
import 'package:flutterapp/textfield2.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Calculator.dart';
import 'bottomnav2.dart';

class totalmenu extends StatefulWidget {
  const totalmenu({Key? key}) : super(key: key);

  @override
  State<totalmenu> createState() => _totalmenuState();
}
class _totalmenuState extends State<totalmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nirmal",style: TextStyle(color: Colors.deepPurpleAccent,fontSize:60,fontWeight: FontWeight.normal),),
          leading: Icon(Icons.home_work),
          backgroundColor: Colors.purple,
          actions: [
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Container(
              color: Colors.redAccent.shade700,
              child: Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage()));
                      }, child:Text("Demo page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage2()));
                      }, child:Text("Text and container page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage3()));
                      }, child:Text("Row And Column page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage4()));
                      }, child:Text("Text And Icons In Container",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage5()));
                      }, child:Text("Stylized Containers page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage6()));
                      }, child:Text("Stacking Containers page",style: TextStyle(fontSize: 25),)),
                      //
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage7()));
                      }, child:Text(" List View page",style: GoogleFonts.abhayaLibre(fontSize: 25))),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage8()));
                      }, child:Text("Scrolling Containers page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage9()));
                      }, child:Text("Stylized Scroll Containers",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage10()));
                      }, child:Text("Tyle page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage11()));
                      }, child:Text("images page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage12()));
                      }, child:Text("Stylized Image&description",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage13()));
                      }, child:Text("Profile page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage14()));
                      }, child:Text("Card page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage15()));
                      }, child:Text("Card and images page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage16()));
                      }, child:Text("Inkwell page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage17()));
                      }, child:Text("Buttons and Types",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Drawer()));
                      }, child:Text("Drawer",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomnav2()));
                      }, child:Text("Bottomnav page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomsheet2()));
                      }, child:Text("Bottomsheet page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>tabbar2()));
                      }, child:Text("TabBar page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage18()));
                      }, child:Text("Tabbar+bottomsheet",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage19()));
                      }, child:Text("Combined menu page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>textfield2()));
                      }, child:Text("textfield page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>printvalues()));
                      }, child:Text("Print Values page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>form()));
                      }, child:Text("form page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>textcontroller2()));
                      }, child:Text("Textcontroller page",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>radiobutton2()));
                      }, child:Text("Radio Button",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dropdownbutton()));
                      }, child:Text("Dropdown Button",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dropdownprint()));
                      }, child:Text("Dropdown print",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>calculator()));
                      }, child:Text("Calculator",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bmicalculator()));
                      }, child:Text("Bmi calculator",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>alert()));
                      }, child:Text("Alert",style: TextStyle(fontSize: 25),)),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SimpleDialog()));
                      }, child:Text("Dialog",style: TextStyle(fontSize: 25),)),

                    ],
              ),
            ),
          ),
        )

    );
  }
}

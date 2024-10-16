import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class googlefonts extends StatefulWidget {
  const googlefonts({Key? key}) : super(key: key);
  @override
  State<googlefonts> createState() => _googlefontsState();
}
class _googlefontsState extends State<googlefonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Google Fonts",style: TextStyle(color: Colors.white24,fontSize:50,fontWeight: FontWeight.normal),),
          // leading: Icon(Icons.home_work),
          backgroundColor: Colors.red,
          actions: [
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 300,
                  child: Image.asset("assets/images/play.jpeg",),
                  color: Colors.black,
                ),
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side: BorderSide(width: 10,color: Colors.grey),
                ),
                tileColor: Colors.red,
                title: Center(child: Text("play",style: GoogleFonts.play(fontSize: 25))),
                subtitle: Center(child: Text("The Play font is part of the Google Fonts collection. It’s a sans-serif typeface called Source Sans1."
                    " When choosing fonts for creative writing or scripts, readability is crucial.",style: GoogleFonts.play(fontSize: 20))),
              ),
              Container(
                height: 400,
                width: 300,
                child: Image.asset("assets/images/fair.jpeg",),
                color: Colors.black,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side: BorderSide(width: 10,color: Colors.grey),
                ),
                tileColor: Colors.red,
                title: Center(child: Text("Playfair Display",style: GoogleFonts.playfairDisplay(fontSize: 25))),
                subtitle: Center(child: Text(" Playfair Display is a transitional serif font with an elegant and graceful appearance"
                    "Playfair Display features noticeable differences between thick and thin strokes, adding visual interest."
                    "Well-suited for titling and headlines due to its extra-large x-height and short descenders.",style: GoogleFonts.playfairDisplay(fontSize: 20))),
              ),
            ],
          ),
        )

    );
  }
}

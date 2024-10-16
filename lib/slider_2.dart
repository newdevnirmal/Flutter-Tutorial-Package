// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class slider2 extends StatefulWidget {
  const slider2({Key? key}) : super(key: key);

  @override
  State<slider2> createState() => _slider2State();
}

class _slider2State extends State<slider2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("GFG Slider"),
      ),

      body: Column(
        children: [
          // CarouselSlider(
          //   items: [
          //
          //     //1st Image of Slider
          //     Container(
          //       margin: EdgeInsets.all(6.0),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(8.0),
          //         image: DecorationImage(
          //           image: NetworkImage("https://www.bing.com/images/search?view=detailV2&ccid=hbqlcAcH&id=10C1498685CC8689015C94B5EA928E022747ACAB&thid=OIP.hbqlcAcHDWQrGR3A3TIDOQHaNK&mediaurl=https%3a%2f%2fwallpapercave.com%2fwp%2fwp4805737.jpg&exph=2560&expw=1440&q=wallpappers+phone&simid=608047450260782304&FORM=IRPRST&ck=F87E47A4F3BBB369E60F76C4687C1EBC&selectedIndex=3&itb=0"),
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //
          //     //2nd Image of Slider
          //     Container(
          //       margin: EdgeInsets.all(6.0),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(8.0),
          //         image: DecorationImage(
          //           image: NetworkImage("https://th.bing.com/th/id/R.8569864a68e580fa66912f9caba9c4e2?rik=i5zEMmRZd8RJ1g&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f10%2fAmazing-Phone-Wallpapers-HD.jpg&ehk=9ADqTSMOdOmMD9cJ0QZXA3NDyPothMYXwGIW5RftWOQ%3d&risl=&pid=ImgRaw&r=0"),
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //
          //     //3rd Image of Slider
          //     Container(
          //       margin: EdgeInsets.all(6.0),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(8.0),
          //         image: DecorationImage(
          //           image: NetworkImage("https://www.pixelstalk.net/wp-content/uploads/2016/06/Nature-Phone-HD-Wallpapers.jpg"),
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ],
          //   //Slider Container properties
          //   options: CarouselOptions(
          //     height: 180.0,
          //     enlargeCenterPage: true,
          //     autoPlay: true,
          //     aspectRatio: 16 / 9,
          //     autoPlayCurve: Curves.fastOutSlowIn,
          //     enableInfiniteScroll: true,
          //     autoPlayAnimationDuration: Duration(milliseconds: 800),
          //     viewportFraction: 0.8,
          //   ),
          // ),
        ],
      ),
    );
  }
}



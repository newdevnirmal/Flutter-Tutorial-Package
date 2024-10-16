import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class table extends StatefulWidget {
  const table({Key? key}) : super(key: key);

  @override
  State<table> createState() => _tableState();
}

class _tableState extends State<table> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:50.0),
        child: Container(
          child: Table(
            border:TableBorder.all(width: 2,color: Colors.orangeAccent),
            children:  [
              TableRow(
                children: [
                  Text("   Product",style: TextStyle(fontSize: 21,color: Colors.red),),
                  Text("   Details",style: TextStyle(fontSize: 21,color: Colors.red),),
                  Text("        Price",style: TextStyle(fontSize: 21,color: Colors.red),),
                ]
              ),
              TableRow(
                children: [
              Image.network("https://eezepc.com/wp-content/uploads/2022/09/Buds2-Pro-Purple-EEZEPC-1.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("samsung buds 2, anc, dolby ,touch controlls",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text("7000",style: TextStyle(fontSize: 30),),
                  ),
                ]
              ),
              TableRow(
                children: [
                Image.network("https://wonderfulengineering.com/wp-content/uploads/2020/11/10-best-Wireless-Earbuds-8-995x1024.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Boat rockerz 180 , anc, 12 mm driver,spacial audio",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text("1200",style: TextStyle(fontSize: 30),)
                  ),
                ]
              ),
              TableRow(
                children: [
                Image.network("https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6501/6501045_sd.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Beats by dre,fully tuned anc,dolby 39mm driver waterproof,titanium finish (PREMIUM)",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text("22000",style: TextStyle(fontSize: 30),),
                  ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}

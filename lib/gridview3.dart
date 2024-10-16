import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridview3 extends StatefulWidget {
  const gridview3({Key? key}) : super(key: key);
  @override
  State<gridview3> createState() => _gridview3State();
}
class _gridview3State extends State<gridview3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flipcart",style: TextStyle(color: Colors.lightBlue,fontSize:20,fontWeight: FontWeight.bold),),
        leading: Icon(Icons.shopping_bag_outlined,size: 50,),
        backgroundColor: Colors.yellowAccent.shade400,
        actions: [

        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: GridView(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
            ),
            children: [
              Container(
                height: 300,
                width: 400,
                child: Column(
                  children:[Image.asset("assets/images/flipcart1.jpeg",),
                    Text("Nothing Phone 2a",style: TextStyle(fontSize: 30),),
                    Text("8/128",style: TextStyle(fontSize: 20),),
                    Text("50 MP ois Main camera",style: TextStyle(fontSize: 20),),
                    Text("Rs:22000",style: TextStyle(fontSize: 20),),
                  ],
                ),
                color: Colors.white12,
              ),
              Container(
                child:Column(children:[Image.asset("assets/images/flipcart2.jpeg",),
                  Text("Galaxy A15 5g",style: TextStyle(fontSize: 30),),
                  Text("8/128",style: TextStyle(fontSize: 20),),
                  Text("128MP main+20MP ultra+12MP macro",style: TextStyle(fontSize: 20),),
                  Text("Rs:28000",style: TextStyle(fontSize: 20),),
                ]
                ),
                color: Colors.white24,
              ),
              Container(
                child:Column(children:[Image.asset("assets/images/flipcart3.jpeg",),
                  Text("Rog gaming phone 8",style: TextStyle(fontSize: 30),),
                  Text("18gb ddr4/128ufs4.0",style: TextStyle(fontSize: 20),),
                  Text("Snapdragon 8Gen 3 gaming",style: TextStyle(fontSize: 20),),
                  Text("Rs:48000",style: TextStyle(fontSize: 20),),
                ]
                ),
                color: Colors.white24,

              ),
              Container(
                child:Column(children:[Image.asset("assets/images/flipcart4.jpeg",),
                  Text("I phone 13 pro",style: TextStyle(fontSize: 30),),
                  Text("8/128",style: TextStyle(fontSize: 20),),
                  Text("12main+12MP ultra+12MP macro",style: TextStyle(fontSize: 20),),
                  Text("Rs:48000",style: TextStyle(fontSize: 20),),
                ]
                ),
                color: Colors.white24,
              ),
              Container(
                child: Image.asset("assets/images/flipcart5.jpeg",),
                color: Colors.white38,
              ),
              Container(
                child: Image.asset("assets/images/flipcart6.jpeg",),
                color: Colors.white,
              ),
              Container(
                child: Image.asset("assets/images/flipcart7.jpeg",),
                color: Colors.white,
              ),
              Container(
                child: Image.asset("assets/images/flipcart8.jpeg",),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

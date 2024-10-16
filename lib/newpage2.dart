import 'package:flutter/material.dart';

class newpage2 extends StatefulWidget {
  const newpage2({Key? key}) : super(key: key);

  @override
  State<newpage2> createState() => _newpage2State();
}

class _newpage2State extends State<newpage2> {
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
        child: Column(
        children: [
          Text("Hi and welcome to flutter app",style: TextStyle(color: Colors.teal,fontSize: 30,fontWeight: FontWeight.w100),),
          Text("this is just a demo",style: TextStyle(backgroundColor: Colors.limeAccent),),
          Text("This is my first app made with flutter",style: TextStyle(backgroundColor: Colors.limeAccent),),
          Text("i like technology",style: TextStyle(backgroundColor: Colors.green),),
          Icon(Icons.balance,color: Colors.black,),
          Icon(Icons.key,color: Colors.redAccent,size: 20,),
          Icon(Icons.access_time_sharp,color: Colors.amber,size: 20,),
          Container(
            height: 230,
            width: 200,
            color: Colors.deepOrange,
          ),
          SizedBox(height: 30,),
          Container(
            height:800 ,
            width: 400,
            color: Colors.pink,
            child: Text("this is a text inside a continer",style:TextStyle(fontSize: 60),)
          )

        ],
      ),
      )

    );
  }
}

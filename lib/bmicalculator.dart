import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class bmicalculator extends StatefulWidget {
  const bmicalculator({Key? key}) : super(key: key);

  @override
  State<bmicalculator> createState() => _bmicalculatorState();
}
TextEditingController height=new TextEditingController();
TextEditingController weight=new TextEditingController();
double res=0.0;
String bmi="";
String info="";
class _bmicalculatorState extends State<bmicalculator> {
  String get rs => " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI",style: TextStyle(color: Colors.blueAccent,fontSize:40,fontWeight: FontWeight.bold),),
        leading: Icon(Icons.sports_gymnastics),
        backgroundColor: Colors.red,
        actions: [
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 380,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 10,color: Colors.blueAccent)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:40),
                                child: Icon(Icons.height,size: 60,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:0,top: 30),
                                child: Container(
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 10,color: Colors.redAccent)
                                  ),
                                  child: TextField(
                                    controller: height,
                                    decoration: InputDecoration(
                                        hintText: "Enter Your Height",
                                        labelText: "Height"
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:40),
                                child: Icon(Icons.monitor_weight,size: 60,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:0,top: 30),
                                child: Container(
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 10,color: Colors.redAccent)
                                  ),
                                  child: TextField(
                                    controller: weight,
                                    decoration: InputDecoration(
                                        hintText: "Enter Your Weight",
                                        labelText: "Weight"
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:30,top: 20),
                            child: Row(
                              children: [
                                ElevatedButton(onPressed:(){
                                  setState(() {
                                    res=((double.tryParse(weight.text)!/(double.tryParse(height.text)!*double.tryParse(height.text)!))*10000) as double;
                                    if (res < 18.5)
                                    {
                                      bmi="Underweight";
                                      info="you are very unhealthy try a calorie increment diet plan";
                                    }
                                    else if (res >= 18.5 && res < 24.9)
                                    {
                                      bmi="Normal weight";
                                      info="Well You Are Perfectly Fine keep maintaining good health with good food and exercise";
                                    }
                                    else if (res >= 24.9 && res < 29.9)
                                    {
                                      bmi="Overweight";
                                      info="You Might be slightly Unhealthy Start a Exercise plan with more cardio and reduce eating Junk Food";
                                    }
                                    else
                                    {
                                      bmi="Obese";
                                      info="You Are obese and You Might Die if you don't take control of your body Immediately";
                                    };
                                  });
                                },style:ElevatedButton.styleFrom(primary: Colors.redAccent,onPrimary: Colors.black),
                                    child:Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text("CALCULATE",style:TextStyle(fontSize:35)),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("BMI=",style: TextStyle(fontSize: 30),),
                              Text(res.toString(),style: TextStyle(fontSize: 25),),
                            ],
                          ),
                          ElevatedButton(onPressed: (){
                            showDialog(
                                context: context,
                                builder: (BuildContext context)
                                {
                                  return AlertDialog(
                                    backgroundColor: Colors.purple.shade50,
                                    title:Text(bmi,style:TextStyle(fontSize:40,color:Colors.purple),),
                                    content: Text(info,style:TextStyle(fontSize:20,color:Colors.purple),),
                                    actions: [
                                      IconButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, icon: Icon(Icons.close))
                                    ],
                                  );
                                });
                          }, child: Text(bmi,style: TextStyle(fontSize: 30),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

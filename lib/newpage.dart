import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/newpage2.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class newpage extends StatefulWidget {
  const newpage({Key? key}) : super(key: key);

  @override
  State<newpage> createState() => _newpageState();
}
 String ? value="";
var place='Kannur';
 var items=[
   'Kannur',
   'Kochi',
 ];

class _newpageState extends State<newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Appbar",style: TextStyle(color: Colors.black87,fontSize:20,fontWeight: FontWeight.bold),),
        // leading: Icon(Icons.home_work_sharp),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [

        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 50,
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Welcome"),
            Text("hello"),
            Icon((Icons.add)),
            Icon(Icons.account_circle,color: Colors.limeAccent,),
            Container(
              height: 200,
              width: 200,
              color: Colors.orange,
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10,color: Colors.lightBlue)
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 10),
              ),
              height: 300,
              width: 300,
              child: Image.asset("assets/images/pic1.jpg",
              fit: BoxFit.fill,),
            ),
            Container(
              height: 303,
              width: 300,
              child: Image.network("https://th.bing.com/th/id/OIP.crbkUityIX3LroQDNCj62gHaE9?w=233&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            ),
            // ListTile(
            //   tileColor: Colors.green,
            //   title: Text(""),
            //   subtitle: Text(""),
            //   leading: Icon(Icons.laptop),
            //   trailing: Icon(Icons.laptop_chromebook),
            // )
            // ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //     Container(
            //       height: 50,
            //       width: 50,
            //       color: Colors.green,
            //     ),
            //     Container(
            //       height: 50,
            //       width: 50,
            //       color: Colors.yellow,
            //     )
            //   ],
            // )
        Card(
          elevation: 10,
          shadowColor: Colors.grey,
          child: ListTile(

          ),
        ),
            InkWell(
              onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage2()));
                },
                child: Text("click here")),
            OutlinedButton(onPressed: (){
            },
              child: Text("outlinedbutton"),
            style: OutlinedButton.styleFrom(

            ),),
            ElevatedButton(onPressed: ()
                {

                }, child: Text("")),
            FloatingActionButton(onPressed: (){

            }),
            TextButton(onPressed: (){

            }, child: Text("")),
            Radio(
                value: "red",
                groupValue: value,
                onChanged: (val){
                  setState(() {
                    value=val;
                  });
                }),
            Radio(
                value: "green",
                groupValue: value,
                onChanged: (val){
                  setState(() {
                    value=val;
                  });
                }),
            Radio(
                value: "blue",
                groupValue: value,
                onChanged: (val){
                  setState(() {
                    value=val;
                  });
                }),
            DropdownButton(
              value: place,
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                      child: Text(items)
                  );
                }).toList(),
                onChanged: (String ? val)
              {
                setState(() {
                  place=val!;
                });
              },
            ),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context)
                  {
                    return AlertDialog(
                      backgroundColor: Colors.purple.shade50,
                      title: Text("Alert"),
                      content: Text("alert"),
                      actions: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.close))
                      ],
                    );
                  });
            }, child: Text("Alert")),
          ElevatedButton(onPressed: (){
            showDialog(
                context: context,
                builder: (BuildContext context){
                  return SimpleDialog(
                    title: Text("Simple"),
                    children: [
                      SimpleDialogOption(
                        child: Container(
                          child: Text("Option1"),
                        ),
                        onPressed: (){
                        },
                      ),
                      SimpleDialogOption(
                        child: Container(
                          child: Text("Option2"),
                        ),
                      ),
                      SimpleDialogOption(
                        child: Container(
                          child: Text("Option2"),
                        ),
                      )
                    ],
                  );
                });
          }, child: Text("simple dialogue")),
            ElevatedButton(onPressed: (){
                  Fluttertoast.showToast(
                    backgroundColor: Colors.yellow,
                      msg: "Toast alert"
                  );
            }, child: Text("Alert")),


            TextFormField(
              // controller:date ,
              // onTap: (){
              //   DateTime date=showDatePicker(
              //       context: context,
              //       initialDate: DateTime.now(),
              //       firstDate: DateTime(1990),
              //       lastDate: DateTime(2050))
              //       setState(() {
              //         date.text=DateFormat('yyyy-MM-dd').format(date);
              //       });
              // },
            ),
// TextFormField(
//   controller: time,
//   onTap: (){
//     var time=showTimePicker(
//         context: context,
//         initialTime: TimeOfDay.now())
//         setState(() {
//           time.text=time.format(context);
//         });
//   },
// )
//           ElevatedButton(onPressed: (){
//             // gallery();
//             final pref=SharedPreferences.getInstance();
//             pref.setString('name','');
//             pref.setInt('id',3);
//             pref.getString('name');
//           }, child: Text("Choose from gallery"))
          ],
        ),
      ),
    );
  }
  // Future gallery()async{
  //   try{
  //     final image=await ImagePicker.pickImage(source:ImageSource.gallery);
  //     if(image!=null)return;
  //     final imagetemp=File(image.path);
  //     setState(() {
  //       this._img=imagetemp;
  //     });
  //   }
  // }
}

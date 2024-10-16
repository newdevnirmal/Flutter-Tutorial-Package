import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterapp/phpregisteredit.dart';
import 'package:http/http.dart' as http;
//Creating a class user to store the data;
class User_model {
  final String id;
  final String file;
  final String name;
  final String phone;
  final String email;
  final String password;
  User_model({
    required this.id,
    required this.file,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
  });

  get firstname => null;
}
class phpregisterdisplay extends StatefulWidget {
  @override
  _phpregisterdisplayState createState() => _phpregisterdisplayState();
}
class _phpregisterdisplayState extends State<phpregisterdisplay> {
//Applying get request.
  Future<List<User_model>> getRequest() async {
    //replace your restFull API here.
    String url = "http://192.168.29.92/flutterdata/register_view.php";
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    print(responseData);
    //Creating a list to store input data;
    List<User_model> users = [];
    for (var singleUser in responseData) {
      User_model user = User_model(
        file: singleUser["File"].toString(),
        id:singleUser ['id'].toString(),
        name: singleUser["name"].toString(),
        phone: singleUser["phone"].toString(),
        email: singleUser["email"].toString(),
        password: singleUser["password"].toString(),
      );
      print( singleUser["file"]);
      //Adding user to the list.
      users.add(user);
    }
    return users;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Storage"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Scaffold(
          body: Container(
            padding: EdgeInsets.all(16.0),
            child: FutureBuilder(
              future: getRequest(),
              builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            color: Colors.red.shade900,
                            strokeWidth: 5,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Data Loading Please Wait!",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                else
                {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (ctx, index) => Column(
                      children: [
                        Card(
                          color: Colors.black,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ListTile(
                                  title: Column(
                                    children: [
                                      Container(
                                        child: Image.network(snapshot.data[index].file),
                                      ),
                                      Text(
                                        snapshot.data[index].name,style: TextStyle(color:Colors.yellow),
                                      ),
                                      Text(
                                        snapshot.data[index].phone,style: TextStyle(color:Colors.yellow),
                                      ),
                                      Text(
                                        snapshot.data[index].email,style: TextStyle(color:Colors.yellow),
                                      ),
                                      Text(
                                        snapshot.data[index].password,style: TextStyle(color:Colors.yellow),
                                      ),
                                    ],
                                  ),
                                  leading:  GestureDetector(
                                      onTap: (){
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>  regedit(data_user: snapshot.data[index],)));
                                      },
                                      child: Icon(Icons.edit,color: Colors.red.shade900,size: 40,)),
                                  trailing: GestureDetector(
                                      onTap: (){
                                        delrecord(snapshot.data[index].id);
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>  phpregisterdisplay()));
                                      },
                                      child: Icon(Icons.delete,color: Colors.red.shade900,size: 40,)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
  Future<void> delrecord(String id) async {
    print(id);
    String url =
        "http://192.168.29.92/flutterdata/register_delete.php";
    var res = await http.post(Uri.parse(url), body: {
      "id": id,
    });
    // var resoponse = jsonDecode(res.body);
    // if (resoponse["success"] == "true") {
    //   print("success");
    // }
  }
}
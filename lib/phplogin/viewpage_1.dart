import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterapp/phplogin/phploginedit.dart';
import 'package:flutterapp/phplogin/phploginview.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
//Creating a class user to store the data;

class login_model {
  final String id;
  final String firstname;
  final String lastname;
  final String file;
  final String phone;
  final String email;
  final String password;
  login_model({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.file,
    required this.phone,
    required this.email,
    required this.password,
  });
}
var data='';

class viewpage1 extends StatefulWidget {
  @override
  _viewpage1State createState() => _viewpage1State();
}
class _viewpage1State extends State<viewpage1> {
//Applying get request.
  Future<List<login_model>> getRequest() async {
    //replace your restFull API here.
    getdata();
    String url = "http://192.168.29.91/flutterdata/logincheckview.php?email=$data";
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    print(responseData);
    //Creating a list to store input data;
    List<login_model> users = [];
    for (var singleUser in responseData) {
      login_model user = login_model(
        file: singleUser["File"].toString(),
        id:singleUser ['id'].toString(),
        firstname:singleUser ['first_name'].toString(),
        lastname:singleUser ['last_name'].toString(),
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
                          color: Colors.white,
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
                                        snapshot.data[index].firstname,style: TextStyle(color:Colors.black),
                                      ),
                                      Text(
                                        snapshot.data[index].lastname,style: TextStyle(color:Colors.black),
                                      ),
                                      Text(
                                        snapshot.data[index].phone,style: TextStyle(color:Colors.black),
                                      ),
                                      Text(
                                        snapshot.data[index].email,style: TextStyle(color:Colors.black),
                                      ),
                                    ],
                                  ),
                                  leading:  GestureDetector(
                                      onTap: (){
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>  phploginedit(login_user: snapshot.data[index],)));
                                      },
                                      child: Icon(Icons.edit,color: Colors.red.shade900,size: 40,)),
                                  trailing: GestureDetector(
                                      onTap: (){
                                        delrecord(snapshot.data[index].id);
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>  loginview()));
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
  Future getdata() async{
    final preflog= await SharedPreferences.getInstance();
    setState(() {
      data=preflog.getString('name')!;
    });
    print("******************");
    print(data);
  }
  Future<void> delrecord(String id) async {
    print(id);
    String url =
        "http://192.168.29.91/flutterdata/logincheckdelete.php?id=$id";
    var res = await http.post(Uri.parse(url), body: {
      "id": id,
    });
    var resoponse = jsonDecode(res.body);
    if (resoponse["success"] == "true") {
      print("success");
    }
  }
}
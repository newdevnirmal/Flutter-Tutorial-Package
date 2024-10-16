import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterapp/phpcrud.dart';
import 'package:flutterapp/phpedit.dart';
import 'package:http/http.dart' as http;

//Creating a class user to store the data;
class User_model {
  final String id;
  final String file;
  User_model({
    required this.id,
    required this.file,
  });
}
class phpdisplaycrud extends StatefulWidget {
  @override
  _phpdisplaycrudState createState() => _phpdisplaycrudState();
}
class _phpdisplaycrudState extends State<phpdisplaycrud> {
//Applying get request.

  Future<List<User_model>> getRequest() async {
    //replace your restFull API here.
    String url = "http://192.168.29.92/flutterdata/file_view.php";

    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);
    print(responseData);
    //Creating a list to store input data;
    List<User_model> users = [];
    for (var singleUser in responseData) {
      User_model user = User_model(
        file: singleUser["file"].toString(),
        id:singleUser ['id'].toString(),
      );
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
          title: Text(
            "Display",
          ),
          backgroundColor: Colors.purpleAccent,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  php()));
            },
            child: Icon(
              Icons.arrow_back_rounded, color: Colors.yellowAccent,
              size: 35, // add custom icons also
            ),
          ),
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
                          color: Colors.lightGreenAccent.shade100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ListTile(
                                  title: Column(
                                    children: [
                                      Container(
                                             child: Image.network(snapshot.data[index].file,),
                                                 ),
                                    ],
                                  ),
                                  leading:  GestureDetector(
                                      onTap: (){
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>  phpedit(data_user: snapshot.data[index],)));
                                      },
                                      child: Icon(Icons.edit,color: Colors.red.shade900,size: 40,)),
                                  trailing: GestureDetector(
                                      onTap: (){
                                        delrecord(snapshot.data[index].id);
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>  phpdisplaycrud()));
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
        "http://192.168.29.92/flutterdata/file_delete.php";
    var res = await http.post(Uri.parse(url), body: {
      "id": id,
    });
    // var resoponse = jsonDecode(res.body);
    // if (resoponse["success"] == "true") {
    //   print("success");
    // }
  }
}



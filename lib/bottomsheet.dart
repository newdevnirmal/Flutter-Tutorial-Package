import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomsheet extends StatefulWidget {
  const bottomsheet({Key? key}) : super(key: key);

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context){
                  return Container(
                    height: 100,
                    child: Row(
                      children: [
                        Text("Bottom sheet"),
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.close))
                      ],
                    ),
                  );
                });
          }, child: Text("Bottom sheet"))
        ],
      ),
    );
  }
}

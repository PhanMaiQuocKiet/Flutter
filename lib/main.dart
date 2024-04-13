//Buoc 1 import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirstapp/values/String/my_string.dart';
import 'package:flutterfirstapp/pages/FirstPage.dart';
//Bưocc 2 main
void main() {
  //buơc 3 Khoi Dong App
  runApp( MaterialApp(
    //Buoc 4 : Su dung thanh phan de xay dung
    home: SafeArea(
      child: Scaffold(
        body: Center(
            child: FirstPage(),
           ) ,
          // appBar: AppBar(
          //   backgroundColor: Colors.red,
          //   title: const Text('Kiet hoc flutter'),
          // ),
          // body: const Center(
          //     child:  Text('HelloWord')
          // )
      ),//+đại diện khung màn hình
    ),//+giao diện màn hình - tabbar ở trenê
    debugShowCheckedModeBanner: false,
  ));
}
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}
class _MyWidgetState extends State<MyWidget> {
  bool showMyWidget2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: !showMyWidget2, // Ẩn nút button khi showMyWidget2 là true
          child: TextButton(
            onPressed: () {
              setState(() {
                showMyWidget2 = true;
              });
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.pink,
              backgroundColor: Colors.green,
            ),
            child: const Text(
              'Text Button',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        Visibility(
          visible: showMyWidget2,
          child: MyWidget2(),
        ),
      ],
    );
  }
}

class MyWidget2 extends StatefulWidget {

  @override
  _MyWidGet2State createState() => _MyWidGet2State();
}
class _MyWidGet2State extends State<MyWidget2>{
  bool showMyWidget1 = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: !showMyWidget1,
          child: TextButton(
          onPressed: (){
            setState(() {
              showMyWidget1 = true;
              
            });
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
            backgroundColor: Colors.blue,
          ),
          child: const Text('Quay lai',
            style: TextStyle(fontSize: 30,),
          ),
          ),
        ),
       Visibility(
           visible: showMyWidget1,
           child: MyWidget(),
       ),
      ],
    );
  }
}
  





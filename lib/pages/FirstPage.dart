import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfirstapp/pages/NextPage.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đôi Lời Tâm Sự'),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20,10,0,20),
                  child: Content(),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      side: const BorderSide(color: Colors.red,width: 2, style: BorderStyle.solid , strokeAlign:  BorderSide.strokeAlignOutside )
                  ),

                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NextPage()
                        )
                    );
                  },
                  child: const Text('Next',
                    style: TextStyle(fontSize: 30),
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Text(
      // Nội dung của lớp Content
      "Cô ơi thiệt ra là con cũng muốn làm bài cô giao lắm nhưng mà con không có đủ thời gian để làm"
          " , cô biết không thể nào sống chỉ với 50k trong túi đúng không cô , nên em phải đi làm tạm"
          " thời để kiếm tiền ăn qua ngày em làm từ sáng tới 9 10g tối về em ráng ngồi 1 xí để học ngôn "
          "ngữ mới tuy ko có gì đẹp đẽ nhưng mà cũng có thể con đã học được một vài thứ cơ bản , "
          "con sẽ comeback vao đầu học kỳ tiếp cảm ơn cô đã dành thời gian đọc đến đây ạ <3",
      style: TextStyle(fontSize: 30),
    );
  }
}

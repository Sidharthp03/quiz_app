// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:quiz_app/utils/color_constant.dart';
import 'package:quiz_app/utils/sample_questions.dart';

class Questionscreen extends StatefulWidget {
  const Questionscreen({super.key});

  @override
  State<Questionscreen> createState() => _QuestionscreenState();
}

class _QuestionscreenState extends State<Questionscreen> {
  // List<Map> mytitle = [
  //   {"title": "volley ball"},
  //   {"title": "basket ball"},
  //   {"title": "football"},
  //   {"title": "hockey"},
  // ];
  int questionIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.myCustomBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Text(
            "5/10",
            style: TextStyle(color: ColorConstant.myCustomBlue),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstant.myCustomGrey),
            child: Text(
              "what is the most popular sport throughout the world?",
              style: TextStyle(color: ColorConstant.myCustomWhite),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: Question_DataBase.Question[questionIndex]["options"].length,
            
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color.fromARGB(255, 72, 71, 71),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Expanded(
                  // flex: 4,
                  Text(
                    // mytitle[index]["title"],
                    "football",
                    style: TextStyle(color: Colors.white),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 5,
                    ),
                  )
                  // )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            onPressed: () {},
            child: Text(
              "next",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

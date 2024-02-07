import 'package:flutter/material.dart';

import 'package:quiz_app/utils/color_constant.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.myCustomBlack,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Congrats ! ",
              style: TextStyle(color: ColorConstant.myCustomWhite),
            ),
            Text(
              "90% Score",
              style: TextStyle(
                color: ColorConstant.myCustomGreen,
                fontSize: 50,
              ),
            ),
            SizedBox(height: 70),
            Container(
              width: 200,
              height: 100,
              child: Center(
                child: Text("RESTART"),
              ),
              decoration: BoxDecoration(
                  color: ColorConstant.myCustomOrange,
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
}

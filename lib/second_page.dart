import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController textEditingController = TextEditingController();
  String reversedText = "";
  bool isRedo = false;
  String tempString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reverse Word"),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                  hintText: "Input word to be reversed",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Output: $reversedText",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      reversedText =
                          reverseText(textEditingController.text.toString());
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text("Reversed"),
                    ),
                  ),
                ),
                InkWell(
                  onDoubleTap: () {
                    setState(() {
                      textEditingController =
                          TextEditingController(text: tempString);
                    });
                  },
                  onTap: () {
                    setState(() {
                      tempString = textEditingController.text.toString();
                    });
                    textEditingController.clear();
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text("Undo/Redo"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  String reverseText(String text) {
    return text.split('').reversed.join('');
  }
}

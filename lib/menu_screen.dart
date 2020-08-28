import 'package:flutter/material.dart';
import 'package:rfci_fe_victoria/second_page.dart';
import 'package:rfci_fe_victoria/sorting_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SortingScreen())),
                child: Container(
                  width: 100,
                  height: 40,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text("Sorting"),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage())),
                child: Container(
                  width: 100,
                  height: 40,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text("Reversing"),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 100,
                  height: 40,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text("Showing List"),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';

class SortingScreen extends StatefulWidget {
  @override
  _SortingScreenState createState() => _SortingScreenState();
}

class _SortingScreenState extends State<SortingScreen> {
  TextEditingController sortingTextCtrl = TextEditingController();
  List<int> listNumbers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sorting"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            TextField(
              controller: sortingTextCtrl,
              decoration: InputDecoration(
                  hintText: "ex : 4 9 7 5 8 9 3", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  final values = sortingTextCtrl.text.split(" ");
                  values.forEach((element) {
                    listNumbers.add(int.parse(element));
                  });
                });
                sort(listNumbers);
                print(listNumbers);
              },
              child: Container(
                width: 300,
                height: 50,
                color: Colors.blueGrey,
                child: Center(
                  child: Text("Sort Number"),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            listNumbers.isNotEmpty
                ? Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: rows.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Text(rows[index]),
                          );
                        }),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  String oneRow;
  List<String> rows = [];

  void sort(List list) {
    int compareCount = 0;
    if (list == null || list.length == 0) return;
    int n = list.length;
    int temp, i, j;

    for (i = 0; i < n - 1; i++) {
      for (j = 0; j < n - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;

          compareCount++;
          oneRow = "$compareCount. [${list[j]}, ${list[j + 1]}] -> $list";
          rows.add(oneRow);
        }
      }
    }
  }
}

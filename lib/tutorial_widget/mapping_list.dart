import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      "Id": 1,
      "Name": "Rahmat Putra",
      "Age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Pink",
        "Accents",
        "Blue",
      ]
    },
    {
      "Id": 2,
      "Name": "Setyapatrianti",
      "Age": 25,
      "favColor": ["White", "Green", "Red"]
    },
    {
      "Id": 3,
      "Name": "Gibran Yusuf",
      "Age": 10,
      "favColor": ["Pink", "BlueAccent", "Accents", "Purple"]
    },
    {
      "Id": 4,
      "Name": "Galih Yusuf",
      "Age": 10,
      "favColor": ["Yellow", "Teal", "White38"]
    },
    {
      "Id": 5,
      "Name": "Dahniar",
      "Age": 55,
      "favColor": ["Pink", "Purple", "White"]
    },
    {
      "Id": 6,
      "Name": "Wawan Irawan",
      "Age": 32,
      "favColor": ["Blue", "Green", "Accents"]
    },
    {
      "Id": 7,
      "Name": "Gemilang",
      "Age": 9,
      "favColor": ["Blue", "Teal", "Red"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          centerTitle: true,
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data['favColor'];
            return Card(
              margin: EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://picsum.photos/id/${data['Id']}/200/300"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name : ${data['Name']}"),
                            Text("Age : ${data['Age']}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myFavColor.map((color) {
                          return Container(
                            decoration: new BoxDecoration(
                              color: Colors.teal[200],
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(10)),
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 5,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lugat_project/database.dart';
import 'package:lugat_project/detailsPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lug'at"),
      ),
      body: ListView(
        children: [
          Myitems(list[0], context),
          Myitems(list[1], context),
          Myitems(list[2], context),
          Myitems(list[3], context),
          Myitems(list[4], context)
        ],
      ),
    );
  }
}

Widget Myitems(Lugatlar word, context) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DetailsPage(lugat: word)));
    },
    child: Card(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                word.name,
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(word.discr)
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    ),
  );
}

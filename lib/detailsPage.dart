// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lugat_project/database.dart';

class DetailsPage extends StatelessWidget {
  final Lugatlar lugat;
  const DetailsPage({Key? key, required this.lugat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                lugat.name,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Icon(Icons.volume_up),
              SizedBox(
                width: 1,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                lugat.discr,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 23,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 350,
                    child: Text(lugat.full),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:example/models/Photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Photo photo;

  Detail({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                  tag: "photo",
                  child: Container(
                    child: Image.network(this.photo.url),
                  )),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "ID: ${photo.id}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "TITLE: ${photo.title}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "THUMBNAILURL: ${photo.thumbnailUrl}",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

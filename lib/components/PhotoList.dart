import 'package:example/bloc/PhotoBloc.dart';
import 'package:example/bloc/PhotoEvents.dart';
import 'package:example/bloc/PhotoState.dart';
import 'package:example/models/Photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoList extends StatefulWidget {
  final PhotoBloc photoBlock;

  PhotoList({required this.photoBlock});

  @override
  _PhotoListState createState() => _PhotoListState();
}

class _PhotoListState extends State<PhotoList> {
  @override
  void initState() {
    widget.photoBlock.add(PhotoLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(builder: (context, state) {
      if (state is PhotoNotGetted)
        return Container(
          child: Text("Путо"),
        );
      if (state is PhotoLoading)
        return CircularProgressIndicator(
          color: Colors.black,
        );
      if (state is PhotoGetted) {
        List<Photo> photos = state.photos;
        var chunks = [];
        for (var i = 0; i < photos.length; i += 6) {
          chunks.add(
              photos.sublist(i, i + 6 > photos.length ? photos.length : i + 6));
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var index = 0; index < chunks.length; index++)
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 20),
                    child: Text(
                      "Категория ${index + 1}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Wrap(
                    runSpacing: 20,
                    spacing: 10,
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      for (Photo photo in chunks[index])
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed("/detail", arguments: photo);
                          },
                          child: Container(
                              constraints: BoxConstraints(maxWidth: 150),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Hero(
                                tag: "photo${photo.id}",
                                child: Image.network(photo.url),
                              )),
                        )
                    ],
                  ),
                ],
              )
          ],
        );
      }
      return Container();
    });
  }
}

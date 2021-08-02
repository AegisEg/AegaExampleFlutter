import 'package:example/bloc/PhotoBloc.dart';
import 'package:example/components/DrawerCusom.dart';
import 'package:example/components/PhotoList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    final PhotoBloc photoBlock = BlocProvider.of<PhotoBloc>(context);
    AppBar appBar = AppBar(
      centerTitle: true,
      title: Text(
        "Галлерея",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
    return Scaffold(
        appBar: appBar,
        drawer: DrawerCusom(),
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    appBar.preferredSize.height -
                    MediaQuery.of(context).padding.top,
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              alignment: Alignment.center,
              child: BlocProvider(
                create: (BuildContext context) => photoBlock,
                child: PhotoList(
                  photoBlock: photoBlock,
                ),
              )),
        ));
  }
}

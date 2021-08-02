import 'package:example/bloc/PhotoBloc.dart';
import 'package:example/models/Photo.dart';
import 'package:example/screens/About.dart';
import 'package:example/screens/Detail.dart';
import 'package:example/screens/Gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'api/PhotoApi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => PhotoBloc(photosApi: PhotoApi()),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: "/gallery",
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/gallery':
                  return MaterialPageRoute(builder: (context) => new Gallery());
                case '/detail':
                  return MaterialPageRoute(
                      builder: (context) =>
                          new Detail(photo: settings.arguments as Photo));
                case '/about':
                  return MaterialPageRoute(builder: (context) => new About());
              }
            }));
  }
}

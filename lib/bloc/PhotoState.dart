import 'package:example/models/Photo.dart';

abstract class PhotoState {}

class PhotoNotGetted extends PhotoState {}

class PhotoLoading extends PhotoState {}

class PhotoGetted extends PhotoState {
  List<Photo> photos;

  PhotoGetted({required this.photos});
}

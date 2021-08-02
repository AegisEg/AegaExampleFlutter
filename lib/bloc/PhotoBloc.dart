import 'package:example/api/PhotoApi.dart';
import 'package:example/bloc/PhotoEvents.dart';
import 'package:example/bloc/PhotoState.dart';
import 'package:example/models/Photo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final PhotoApi photosApi;

  PhotoBloc({required this.photosApi}) : super(PhotoNotGetted());

  @override
  PhotoState get initialState => PhotoNotGetted();

  @override
  Stream<PhotoState> mapEventToState(PhotoEvent event) async* {
    if (event is PhotoLoadEvent) {
      try {
        final List<Photo> _loadedPhoto = await photosApi.getPhotos();
        yield PhotoGetted(photos: _loadedPhoto);
      } catch (_) {
        yield PhotoNotGetted();
      }
    }
  }
}

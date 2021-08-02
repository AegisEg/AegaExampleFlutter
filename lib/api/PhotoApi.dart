import 'dart:convert';
import 'package:example/models/Photo.dart';
import "package:http/http.dart" as http;

class PhotoApi {
  Future<List<Photo>> getPhotos() async {
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/photos?_limit=24"));
      if (response.statusCode == 200) {
        final List<dynamic> photo = json.decode(response.body);
        return photo.map((json) => Photo.fromJson(json)).toList();
      }
    } catch (_) {
      throw Exception("Fetching crash");

    }
    return [];
  }
}

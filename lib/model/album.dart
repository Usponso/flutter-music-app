import 'package:fronttraining/model/song.dart';

class Album{
  final String name;
  final String cover_url;
  final List<Song> songs;

  Album({required this.name, required this.cover_url, required this.songs});


}
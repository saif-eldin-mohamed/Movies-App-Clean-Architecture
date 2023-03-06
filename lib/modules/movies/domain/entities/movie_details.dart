import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetails extends Equatable {
  final String image;
  final List<Genres> genres;
  final int id;
  final String description;
  final String releaseDate;
  final int runTime;
  final String title;
  final double averageVote;

  const MovieDetails({
    required this.image,
    required this.genres,
    required this.id,
    required this.description,
    required this.releaseDate,
    required this.runTime,
    required this.title,
    required this.averageVote,
  });

  @override
  List<Object> get props => [
        image,
        genres,
        id,
        description,
        releaseDate,
        runTime,
        title,
        averageVote,
      ];
}

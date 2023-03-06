
import '../../domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.image,
    required super.genderIds,
    required super.description,
    required super.averageVote,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        title: json['title'],
        image: json['backdrop_path'],
        genderIds: List<int>.from(
          json['genre_ids'].map((e) => e),
        ),
        description: json['overview'],
        averageVote: json['vote_average'],
        releaseDate: json['release_date'],
      );
}

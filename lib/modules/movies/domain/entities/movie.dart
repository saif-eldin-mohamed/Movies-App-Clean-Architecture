import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String image;
  final List<int> genderIds;
  final String description;
  final num averageVote;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.image,
    required this.genderIds,
    required this.description,
    required this.averageVote,
    required this.releaseDate,
  });

  @override
  List<Object> get props => [
        id,
        title,
        image,
        genderIds,
        description,
        averageVote,
        releaseDate,
      ];
}

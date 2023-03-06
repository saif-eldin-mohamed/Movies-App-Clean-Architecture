import '../../domain/entities/recommendations.dart';

class RecommendationModel extends Recommendations {
  const RecommendationModel({
    required super.id,
    super.image,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        id: json['id'],
        image: json['backdrop_path'] ?? '',
      );
}

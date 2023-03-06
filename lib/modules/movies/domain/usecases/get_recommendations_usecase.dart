import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../entities/recommendations.dart';
import '../repository/movies_base_repository.dart';


class GetRecommendationsUseCase
    extends BaseUseCase<List<Recommendations>, RecommendationsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationsUseCase(
    this.baseMoviesRepository,
  );

  @override
  Future<Either<Failure, List<Recommendations>>> call(
      RecommendationsParameters parameters) async {
    return await baseMoviesRepository.getRecommendations(
      parameters,
    );
  }
}

class RecommendationsParameters extends Equatable {
  final int id;

  const RecommendationsParameters({
    required this.id,
  });

  @override
  List<Object> get props => [
        id,
      ];
}

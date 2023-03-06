import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../entities/movie_details.dart';
import '../repository/movies_base_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetails, MovieDetailsParameters> {
  final BaseMoviesRepository moviesRepository;

  GetMovieDetailsUseCase(
    this.moviesRepository,
  );

  @override
  Future<Either<Failure, MovieDetails>> call(
    MovieDetailsParameters parameters,
  ) async {
    return await moviesRepository.getMovieDetails(
      parameters,
    );
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({
    required this.movieId,
  });

  @override
  List<Object> get props => [
        movieId,
      ];
}

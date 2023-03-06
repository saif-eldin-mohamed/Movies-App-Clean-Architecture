import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../entities/movie_details.dart';
import '../entities/recommendations.dart';
import '../usecases/get_movie_details_usecase.dart';
import '../usecases/get_recommendations_usecase.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetails>> getMovieDetails(
    MovieDetailsParameters parameters,
  );

  Future<Either<Failure, List<Recommendations>>> getRecommendations(
    RecommendationsParameters parameters,
  );
}

import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/movie.dart';
import '../../domain/entities/movie_details.dart';
import '../../domain/entities/recommendations.dart';
import '../../domain/repository/movies_base_repository.dart';
import '../../domain/usecases/get_movie_details_usecase.dart';
import '../../domain/usecases/get_recommendations_usecase.dart';
import '../datasource/remote_movie_data_source.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseRemoteMovieDataSource baseRemoteMovieDataSource;

  MoviesRepository(
    this.baseRemoteMovieDataSource,
  );

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseRemoteMovieDataSource.getNowPlayingMovies();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          message: failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseRemoteMovieDataSource.getGetPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          message: failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseRemoteMovieDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          message: failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final result = await baseRemoteMovieDataSource.getMovieDetails(
      parameters,
    );
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          message: failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Recommendations>>> getRecommendations(
    RecommendationsParameters parameters,
  ) async {
    final result = await baseRemoteMovieDataSource.getRecommendations(
      parameters,
    );
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          message: failure.errorMessageModel.statusMessage,
        ),
      );
    }
  }
}

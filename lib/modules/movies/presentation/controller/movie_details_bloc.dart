import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/enums.dart';
import '../../domain/usecases/get_movie_details_usecase.dart';
import '../../domain/usecases/get_recommendations_usecase.dart';
import 'movie_details_event.dart';
import 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationsUseCase getRecommendationsUseCase;

  MovieDetailsBloc(
    this.getMovieDetailsUseCase,
    this.getRecommendationsUseCase,
  ) : super(
          const MovieDetailsState(),
        ) {
    on<GetMovieDetailsEvent>((event, emit) async {
      final result = await getMovieDetailsUseCase(
        MovieDetailsParameters(
          movieId: event.id,
        ),
      );
      result.fold(
        (l) => emit(
          state.copyWith(
            movieDetailsState: RequestState.error,
            movieDetailsMessage: l.message,
          ),
        ),
        (r) => emit(
          state.copyWith(
            movieDetails: r,
            movieDetailsState: RequestState.loaded,
          ),
        ),
      );
    });

    on<GetRecommendationsEvent>((event, emit) async {
      final result = await getRecommendationsUseCase(
        RecommendationsParameters(
          id: event.id,
        ),
      );
      result.fold(
        (l) => emit(
          state.copyWith(
            recommendationsState: RequestState.error,
            recommendationsMessage: l.message,
          ),
        ),
        (r) => emit(
          state.copyWith(
            recommendationsState: RequestState.loaded,
            recommendations: r,
          ),
        ),
      );
    });
  }
}

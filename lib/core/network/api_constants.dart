class ApiConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3';

  static const String apiKey = 'e791ae11f19d4dfb0cbb533cc412d0c5';

  static const String nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$apiKey';

  static const String popularMoviesPath =
      '$baseUrl/movie/popular?api_key=$apiKey';

  static const String topRatedMoviesPath =
      '$baseUrl/movie/top_rated?api_key=$apiKey';

  static String movieDetailsPath(int movieId) =>
      '$baseUrl/movie/$movieId?api_key=$apiKey';

  static String recommendationsPath(int movieId) =>
      '$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}

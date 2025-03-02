import 'package:pelix/core/strings.dart';
import 'package:pelix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$kBaseUrl/search/movie?api_key=$apiKey";

  static const hotandNewMovie = '$kBaseUrl/discover/movie?api_key=$apiKey';

  static const hotandNewTv = '$kBaseUrl/discover/tv?api_key=$apiKey';

  static const hometopratedmovie =
      '$kBaseUrl/movie/top_rated?language=en-US&page=1&api_key=$apiKey';

  static const hometoptentv =
      '$kBaseUrl/trending/tv/day?language=en-US&api_key=$apiKey';
}

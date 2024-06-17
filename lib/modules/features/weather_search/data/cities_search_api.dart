import 'package:dio/dio.dart';

import 'dto/cities/cities_list_dto.dart';

class CitiesSearchApi {
  final Dio _client;

  const CitiesSearchApi(this._client);

  Future<CitiesListDto> search(String query) =>
      _client.get<Map<String, Object?>>(
        '/v1/reference-data/locations/cities',
        queryParameters: {'keyword': query, 'max': 30},
      ).then((response) => CitiesListDto.fromJson(response.data!));
}

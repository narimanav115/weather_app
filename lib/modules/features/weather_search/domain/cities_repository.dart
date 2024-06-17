import 'package:dio/dio.dart';

import '../data/cities_search_api.dart';
import '../data/dto/cities/errors_dto.dart';
import '../data/mappers/cities_list_data_mapper.dart';
import 'models/cities_list_model.dart';

class CitiesRepository {
  final CitiesSearchApi _api;

  String? get error => _error;

  String? _error;

  CitiesRepository(this._api);

  Future<CitiesListModel?> search(String query) async {
    _error = null;
    try {
      final response = await _api.search(query);

      return response.toModel();
    } on DioException catch (error) {
      final response = error.response;
      if (response != null && response.data is Map<String, Object?>) {
        _error = ErrorsDto.fromJson(
          response.data as Map<String, Object?>,
        ).errors.first.title;
      }

      return null;
    }
  }
}

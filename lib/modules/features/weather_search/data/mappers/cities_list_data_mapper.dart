import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../../domain/models/cities_list_model.dart';
import '../dto/cities/cities_list_dto.dart';
import 'city_mapper.dart';

extension CitiesListDataMapper on CitiesListDto {
  CitiesListModel toModel() => CitiesListModel(
        cities: data
                ?.map(
                  (data) => data.toModel(),
                )
                .toIList() ??
            IList(const []),
      );
}

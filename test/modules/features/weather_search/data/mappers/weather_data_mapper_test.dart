import 'package:flutter_test/flutter_test.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/weather/weather_data_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/weather/weather_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/weather/weather_info_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/mappers/weather_data_mapper.dart';
import 'package:weather_test/modules/features/weather_search/domain/models/weather_data_model.dart';

void main() {
  test('WeatherDataMapper returns model from dto', () {
    const dto = WeatherDataDto(
      main: WeatherInfoDto(temp: 30.9, tempMin: 29.4914, tempMax: 32.78),
      weather: [
        WeatherDto(
          main: 'Rain',
          icon: '10d',
        ),
      ],
    );

    const model = WeatherDataModel(
      title: 'Rain',
      icon: 'http://link.com/10d@4x.png',
      temperature: 31,
      minTemperature: 29,
      maxTemperature: 33,
    );

    expect(dto.toModel('http://link.com/'), equals(model));
  });
}

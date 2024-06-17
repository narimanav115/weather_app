import '../../domain/models/weather_data_model.dart';
import '../dto/weather/weather_data_dto.dart';

extension WeatherDataMapper on WeatherDataDto {
  WeatherDataModel toModel(String iconLink) => WeatherDataModel(
        title: weather.first.main,
        icon: '$iconLink${weather.first.icon}@4x.png',
        temperature: main.temp.round(),
        minTemperature: main.tempMin.round(),
        maxTemperature: main.tempMax.round(),
      );
}

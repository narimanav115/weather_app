import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:provider/provider.dart';
import 'package:weather_test/modules/features/weather_search/domain/models/city_model.dart';
import 'package:weather_test/modules/features/weather_search/domain/models/weather_data_model.dart';
import 'package:weather_test/modules/features/weather_search/presentation/bloc/weather_screen_bloc.dart';
import 'package:weather_test/modules/features/weather_search/presentation/bloc/weather_screen_state.dart';
import 'package:weather_test/modules/features/weather_search/presentation/screens/weather_screen.dart';

import '../../../../../mocks/weather_screen_bloc_mock.dart';

void main() {
  final weatherScreenBlocMock = WeatherScreenBlocMock();

  setUp(() {
    when(() => weatherScreenBlocMock.state).thenReturn(
      WeatherScreenState(
        cities: IList(const []),
        selectedCity: const CityModel(
          name: 'Tokyo',
          country: 'JP',
          stateCode: '',
        ),
        weather: const WeatherDataModel(
          title: 'Rain',
          icon: 'https://openweathermap.org/img/wn/10d@2x.png',
          temperature: 20,
          maxTemperature: 22,
          minTemperature: 18,
        ),
      ),
    );
  });
  testGoldens('WeatherScreen', (tester) async {
    final screen = Provider<WeatherScreenBloc>.value(
      value: weatherScreenBlocMock,
      child: const WeatherScreen(),
    );

    await mockNetworkImagesFor(() async {
      await tester.pumpWidgetBuilder(screen);

      await multiScreenGolden(tester, 'weather_screen_test');
    });
  });
}

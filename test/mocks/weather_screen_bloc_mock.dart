import 'package:bloc_test/bloc_test.dart';
import 'package:weather_test/modules/features/weather_search/presentation/bloc/weather_screen_bloc.dart';
import 'package:weather_test/modules/features/weather_search/presentation/bloc/weather_screen_event.dart';
import 'package:weather_test/modules/features/weather_search/presentation/bloc/weather_screen_state.dart';

class WeatherScreenBlocMock
    extends MockBloc<WeatherScreenEvent, WeatherScreenState>
    implements WeatherScreenBloc {}

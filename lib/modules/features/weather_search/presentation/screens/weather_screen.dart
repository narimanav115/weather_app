import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather_screen_bloc.dart';
import '../bloc/weather_screen_event.dart';
import '../bloc/weather_screen_state.dart';
import 'widgets/weather_info_widget.dart';
import 'widgets/weather_screen_dropdown.dart';

const _debounceInterval = Duration(milliseconds: 500);

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late final TextEditingController _controller;
  late final WeatherScreenBloc _bloc;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _bloc = context.read();
    _controller = TextEditingController();
    _controller.addListener(_onQueryChanged);
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_onQueryChanged)
      ..dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<WeatherScreenBloc, WeatherScreenState>(
        builder: (_, state) => Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                WeatherScreenDropdown(
                  controller: _controller,
                  onClear: () {
                    _controller.text = '';
                    _timer?.cancel();
                    _bloc.add(const WeatherScreenEvent.clear());
                  },
                  onSelected: (city) {
                    if (city != null) {
                      _bloc.add(WeatherScreenEvent.selectCity(city));
                      _controller.text = city.name;
                    }
                    _timer?.cancel();
                  },
                  cities: state.cities,
                ),
                const SizedBox(height: 50),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: state.error != null
                      ? Text(
                          state.error!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        )
                      : state.weather != null
                          ? WeatherInfoWidget(
                              info: state.weather!,
                              title: state.selectedCity!.name,
                            )
                          : const Text(
                              'Select city',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.blue.withOpacity(0.5),
        ),
        bloc: _bloc,
      );

  void _onQueryChanged() {
    if (_timer?.isActive ?? false) _timer?.cancel();
    _timer = Timer(_debounceInterval, _search);
  }

  void _search() {
    final query = _controller.text;
    if (query.isEmpty) {
      return _bloc.add(const WeatherScreenEvent.clear());
    }

    return _bloc.add(WeatherScreenEvent.search(query));
  }
}

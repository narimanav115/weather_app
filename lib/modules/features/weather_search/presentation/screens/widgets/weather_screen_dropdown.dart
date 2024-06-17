import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../domain/models/city_model.dart';

class WeatherScreenDropdown extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onClear;
  final ValueChanged<CityModel?>? onSelected;
  final Iterable<CityModel> cities;

  const WeatherScreenDropdown({
    super.key,
    required this.controller,
    required this.onClear,
    this.onSelected,
    required this.cities,
  });

  @override
  Widget build(BuildContext context) => DropdownMenu<CityModel>(
        menuHeight: 150,
        leadingIcon: const Icon(Icons.search),
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp('[a-zA-Z]'),
          ),
        ],
        trailingIcon: GestureDetector(
          onTap: onClear,
          child: const SizedBox.square(
            dimension: 50,
            child: Icon(
              Icons.cancel,
              size: 20,
            ),
          ),
        ),
        controller: controller,
        onSelected: onSelected,
        expandedInsets: const EdgeInsets.all(20),
        dropdownMenuEntries: [
          for (final city in cities)
            DropdownMenuEntry(
              value: city,
              label:
                  '${city.name}, ${city.stateCode.isEmpty ? '' : '${city.stateCode},'} ${city.country}',
            ),
        ],
      );
}

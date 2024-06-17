import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../domain/models/city_model.dart';

class WeatherScreenDropdown extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final VoidCallback onClear;
  final ValueChanged<CityModel?>? onSelected;
  final Iterable<CityModel> cities;

  const WeatherScreenDropdown({
    super.key,
    required this.controller,
    this.focusNode,
    required this.onClear,
    this.onSelected,
    required this.cities,
  });

  @override
  Widget build(BuildContext context) => DropdownMenu<CityModel>(
        menuHeight: 150,
        leadingIcon: const Icon(Icons.search, color: Colors.white),
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp(r'^[a-zA-Z_ ]*$'),
          ),
        ],
        trailingIcon: GestureDetector(
          onTap: onClear,
          behavior: HitTestBehavior.translucent,
          child: const SizedBox(
            height: 30,
            width: 50,
            child: Icon(Icons.cancel, size: 20, color: Colors.white),
          ),
        ),
        textStyle: const TextStyle(fontSize: 20, color: Colors.white),
        focusNode: focusNode,
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

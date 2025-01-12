import 'package:flutter/material.dart';

import 'app.dart';
import 'base/enums.dart';
import 'base/models/flavour_config.dart';
import 'base/models/flavour_values.dart';

void main() {
  FlavorConfig(
      flavor: Flavor.BETA,
      color: Colors.lightGreenAccent,
      values: FlavorValues(baseUrl: "https://sunnydodti.com/beta"));
  runApp(const App());
}

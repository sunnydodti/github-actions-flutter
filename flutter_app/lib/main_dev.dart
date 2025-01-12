import 'package:flutter/material.dart';

import 'app.dart';
import 'base/enums.dart';
import 'base/models/flavour_config.dart';
import 'base/models/flavour_values.dart';

void main() {
  FlavorConfig(
      flavor: Flavor.DEV,
      color: Colors.green,
      values: FlavorValues(
          baseUrl:
              "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_dev.dart"));
  runApp(const MyApp());
}

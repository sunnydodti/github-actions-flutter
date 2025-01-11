import 'package:flutter/material.dart';

import 'app.dart';
import 'enums/base/flavour.dart';
import 'models/base/flavour_config.dart';
import 'models/base/flavour_values.dart';

void main() {
  FlavorConfig(flavor: Flavor.STG,
      color: Colors.blue,
      values: FlavorValues(baseUrl: "https://raw.githubusercontent.com/JHBitencourt/ready_to_go/master/lib/json/person_qa.json"));
  runApp(const MyApp());
}

import 'package:flutter/material.dart';

import 'models/base/flavour_config.dart';
import 'ui/base/flavour_banner.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ready to Go',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: Scaffold(
        appBar: AppBar(title: const Text('Flutter Ready to Go')),
        body: Center(child: Text("Flavor: ${FlavorConfig.instance.name}")),
      ),
    );
  }
}
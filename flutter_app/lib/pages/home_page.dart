import 'package:flutter/material.dart';
import 'package:flutter_app/base/widgets/flavour_banner.dart';

import '../base/models/flavour_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: Scaffold(
        appBar: AppBar(title: Text('Flutter Flavours')),
        body: Center(child: Text("Flavor: ${FlavorConfig.instance.name}")),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/ui/base/device_info_dialog.dart';

import '../../models/base/build_config.dart';
import '../../models/base/flavour_config.dart';


class FlavorBanner extends StatelessWidget {
  final Widget child;
  BannerConfig? bannerConfig;

  FlavorBanner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.isPRODUCTION()) return child;
    bannerConfig ??= _getDefaultBanner();
    return Stack(
      children: <Widget>[child, _buildBanner(context)],
    );
  }

  BannerConfig _getDefaultBanner() {
    return BannerConfig(
        bannerName: FlavorConfig.instance.name,
        bannerColor: FlavorConfig.instance.color);
  }

  Widget _buildBanner(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        width: 50,
        height: 50,
        child: CustomPaint(
          painter: BannerPainter(
              message: bannerConfig!.bannerName,
              textDirection: Directionality.of(context),
              layoutDirection: Directionality.of(context),
              location: BannerLocation.topStart,
              color: bannerConfig!.bannerColor),
        ),
      ),
      onLongPress: () => _showDeviceInfo(context),
      onTap: () => _showDeviceInfo(context),
    );
  }

  Future<dynamic> _showDeviceInfo(BuildContext context) {
    return showDialog(
        context: context, builder: (context) => const DeviceInfoDialog());
  }
}
enum Flavor {
  alpha,
  beta,
  prd,
  stg,
  dev,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.alpha:
        return 'flutter_app_alpha';
      case Flavor.beta:
        return 'flutter_app_beta';
      case Flavor.prd:
        return 'flutter_app';
      case Flavor.stg:
        return 'flutter_app_stg';
      case Flavor.dev:
        return 'flutter_app_dev';
      default:
        return 'title';
    }
  }

}

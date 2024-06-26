import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});

  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(nama: ''),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.DATA_PENDAFTAR,
      page: () => DataPendaftarScreen(),
      binding: DataPendaftarControllerBinding(),
    ),
    GetPage(
      name: Routes.TAGIHAN,
      page: () => TagihanScreen(),
      binding: TagihanControllerBinding(),
    ),
    GetPage(
      name: Routes.SANTRI,
      page: () => SantriScreen(),
      binding: SantriControllerBinding(),
    ),
 
  ];
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wvems_protocols/controllers/theme_service.dart';

import 'app_logo.dart';

class StyledNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeService themeService = Get.find();
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: AppLogo(),
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
          ),
          ListTile(
            title: const Text('Dark Mode'),
            onTap: () {
              themeService.setThemeMode(ThemeMode.dark);
              Get.back();
            },
          ),
          ListTile(
            title: const Text('Light Mode'),
            onTap: () {
              themeService.setThemeMode(ThemeMode.light);
              Get.back();
            },
          ),
          ListTile(
            title: const Text('System Default'),
            onTap: () {
              themeService.setThemeMode(ThemeMode.system);
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}

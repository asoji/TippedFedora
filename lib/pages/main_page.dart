import 'package:flutter/material.dart';
import 'package:material3_layout/material3_layout.dart';
import 'package:tippedfedoraflutter/pages/package_repos.dart';
import 'package:tippedfedoraflutter/pages/packages.dart';
import 'package:tippedfedoraflutter/pages/start_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationScaffold(
        appBar: AppBar(title: const Text("Tipped Fedora")),
        navigationType: NavigationTypeEnum.drawer,
        navigationSettings: DrawerSettings(
          pages: [StartScreen(), PackageRepos(), Packages()],
          destinations: [
            CustomNavigationDrawer.sectionHeader('Welcome'),
            NavigationDrawerDestination(
              icon: Icon(Icons.home),
              label: Text('Start'),
            ),
            CustomNavigationDrawer.sectionHeader('Packages Setup'),
            NavigationDrawerDestination(
              icon: Icon(Icons.account_tree),
              label: Text('Package Repos'),
            ),
            NavigationDrawerDestination(
              icon: Icon(Icons.home),
              label: Text('Packages'),
            )
          ],
          type: NavigationTypeEnum.drawer,
        ),
        theme: Theme.of(context));
  }
}

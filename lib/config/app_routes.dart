import 'package:tippedfedoraflutter/pages/main_page.dart';
import 'package:tippedfedoraflutter/pages/not_root.dart';
import 'package:tippedfedoraflutter/pages/package_repos.dart';
import 'package:tippedfedoraflutter/pages/start_screen.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => const MainPage(),
    '/start': (context) => const StartScreen(),
    '/package_repos': (context) => const PackageRepos(),
    '/not_root': (context) => const NotRoot()
  };

  static const main_page = '/';
  static const start = '/start';
  static const package_repos = '/package_repos';
  static const packages = '/packages';
  static const not_root = '/not_root';
}
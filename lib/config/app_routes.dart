import 'package:tippedfedoraflutter/pages/package_repos.dart';
import 'package:tippedfedoraflutter/pages/start_screen.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => StartScreen(),
    '/package_repos': (context) => PackageRepos()
  };

  static const start = '/';
  static const package_repos = '/package_repos';
  static const packages = '/packages';
}
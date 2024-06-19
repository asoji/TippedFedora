import 'package:flutter/material.dart';
import 'package:tippedfedoraflutter/components/progress_drawer.dart';

class PackageRepos extends StatefulWidget {
  const PackageRepos({super.key});

  @override
  State<PackageRepos> createState() => _PackageReposState();
}

class _PackageReposState extends State<PackageRepos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Package Repositories")),
      drawer: ProgressDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Which package repositories do you want added to your Fedora repositories and Flatpak")
          ],
        ),
      ),
    );
  }
}

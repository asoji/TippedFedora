import 'package:flutter/material.dart';
import 'package:tippedfedoraflutter/components/progress_drawer.dart';
import 'package:tippedfedoraflutter/config/app_routes.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome to Tipped Fedora!")),
      drawer: ProgressDrawer(),
      body: Center(
        child: Column(
          // WHY DID I NEED BOTH OF THESE AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          // I WAS BANGING MY HEAD OVER IT FOR THE PAST HALKF A FUCKIN HOUR
          // FUCKER
          // YOU WOULD FUCKING THINK THAT BY USING THE Center() FUNC IT'D CENTER BOTH BUT NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Hopefully everything goes smoothly!",
                style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            FilledButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.package_repos);
                },
                child: const Text("Click here to start."))
          ],
        ),
      ),
    );
  }
}

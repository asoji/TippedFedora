import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippedfedoraflutter/components/progress_drawer.dart';
import 'package:tippedfedoraflutter/config/app_images.dart';
import 'package:tippedfedoraflutter/config/app_routes.dart';
import 'package:tippedfedoraflutter/pages/main_page.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StatefulWidget> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // WHY DID I NEED BOTH OF THESE AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          // I WAS BANGING MY HEAD OVER IT FOR THE PAST HALKF A FUCKIN HOUR
          // FUCKER
          // YOU WOULD FUCKING THINK THAT BY USING THE Center() FUNC IT'D CENTER BOTH BUT NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 960,
                  height: 540,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.start_image)),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Welcome!",
                          style: GoogleFonts.manrope(
                            shadows: [
                              Shadow(
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 3.0,
                                color: Theme.of(context).colorScheme.surfaceBright
                              )
                            ],
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              color: Theme.of(context).colorScheme.onPrimary)),
                      const SizedBox(height: 16),
                      Text(
                          "This app will get your post-install Fedora installation all set up.",
                          style: GoogleFonts.manrope(
                            textStyle: Theme.of(context).textTheme.titleMedium,
                              color: Theme.of(context).colorScheme.onPrimary
                          )),
                      const SizedBox(height: 32),
                      FilledButton(
                          onPressed: () {

                          },
                          child: const Text("Start"))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

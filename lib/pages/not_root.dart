import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/root_check.dart';

class NotRoot extends StatelessWidget {
  const NotRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "The setup cannot proceed!",
            style: TextStyle(
                color: Theme.of(context).colorScheme.onErrorContainer),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.errorContainer),
      backgroundColor: Theme.of(context).colorScheme.errorContainer,
      body: Center(
        child: Column(
          // WHY DID I NEED BOTH OF THESE AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          // I WAS BANGING MY HEAD OVER IT FOR THE PAST HALKF A FUCKIN HOUR
          // FUCKER
          // YOU WOULD FUCKING THINK THAT BY USING THE Center() FUNC IT'D CENTER BOTH BUT NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This app is not running as root!",
                style: GoogleFonts.manrope(
                    color: Theme.of(context).colorScheme.error,
                    fontSize:
                        Theme.of(context).textTheme.displayMedium?.fontSize)),
            Text(
              "Please restart the app, prefixing it with sudo, or try clicking the button below.",
              style: GoogleFonts.manrope(
                  color: Theme.of(context).colorScheme.onErrorContainer,
                  fontSize: Theme.of(context).textTheme.titleMedium?.fontSize),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: restartAsRoot,
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Theme.of(context)
                      .buttonTheme
                      .colorScheme
                      ?.onErrorContainer)),
              child: const Text("Click here to restart"),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippedfedoraflutter/config/app_routes.dart';
import 'package:tippedfedoraflutter/pages/start_screen.dart';
import 'package:process_run/shell.dart';

var stdin = sharedStdIn;

void main(List<String> arguments) async {

  // var env = ShellEnvironment()..aliases['sudo'] = 'sudo --stdin';
  // var shell = Shell(
  //     stdin: sharedStdIn,
  //     // lsof return exitCode 1 if not found
  //     environment: env,
  //     throwOnError: false);

  runApp(const MyApp());
  // await shell.run('sudo lsof -i:80');
  // await shell.run('sudo lsof -i:80');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tipped Fedora',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          textTheme: GoogleFonts.manropeTextTheme()
      ),
      initialRoute: AppRoutes.start,
      routes: AppRoutes.pages,
    );
  }
}


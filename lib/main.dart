
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippedfedoraflutter/config/app_routes.dart';
import 'package:process_run/shell.dart';
import 'package:material3_layout/material3_layout.dart';
import 'package:tippedfedoraflutter/utils/root_check.dart';

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
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tipped Fedora',
          theme: ThemeData(
            colorScheme: lightDynamic,
            useMaterial3: true,
            textTheme:
                GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
          ),
          initialRoute: areWeRoot() ? AppRoutes.main_page : AppRoutes.not_root,
          // initialRoute: AppRoutes.main_page,
          routes: AppRoutes.pages,
        );
      },
    );
  }
}

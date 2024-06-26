import 'package:process/process.dart';
import 'dart:io';
import 'dart:developer';

// Creates a LocalProcessManager for relaunching the process later
LocalProcessManager manager = const LocalProcessManager();

// Initial internal blank boolean
bool? _areWeRoot;

// Public boolean to use to check if application is running as root
bool areWeRoot() => _areWeRoot ?? _checkRunningAsRoot();

// Internal boolean check if we're running as root
bool _checkRunningAsRoot() {
  // Checks if the environment is running as user `root`
  _areWeRoot = Platform.environment['USER'] == "root";
  log("[_checkRunningAsRoot] Root status: $_areWeRoot");
  return _areWeRoot ?? false;
}

// Restart as a root user using `pkexec`
void restartAsRoot() async {
  // Checks if we're already running as root, if so, just return nothing
  if(_areWeRoot ?? _checkRunningAsRoot()) {
    log("[restartAsRoot] Already running as root.");
    // What are we doing here)
    return;
  }

  // We start a new process of the same application, this time, under root, executed using pkexec
  log("[restartAsRoot] Executable at: ${Platform.resolvedExecutable}");
  log("[restartAsRoot] Arguments to be forwarded: ${Platform.executableArguments.join(", ")}");
  await manager.start(List.from(["pkexec", "env", "DISPLAY=${Platform.environment['DISPLAY']}", "XAUTHORITY=${Platform.environment['XAUTHORITY']}", Platform.resolvedExecutable])..addAll(Platform.executableArguments), mode: ProcessStartMode.detached);
  exit(0);
}
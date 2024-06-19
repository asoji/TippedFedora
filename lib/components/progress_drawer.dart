import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProgressDrawer extends StatefulWidget {
  const ProgressDrawer({super.key});

  @override
  State<ProgressDrawer> createState() => _ProgressDrawerState();
}

class _ProgressDrawerState extends State<ProgressDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
          children: const [
            ListTile(
              title: Text('Start'),
            ),
            ListTile(
              title: Text('Package Repos'),
            ),
            ListTile(
              title: Text('Packages'),
            ),
          ],
      ),
    );
  }
}

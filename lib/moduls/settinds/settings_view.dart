import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  RadioViwe({super.key}) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("Settings View",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w500,
            )));
  }
}

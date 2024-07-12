import 'package:deep_link_poc/base_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Config Screen'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Config Screen',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

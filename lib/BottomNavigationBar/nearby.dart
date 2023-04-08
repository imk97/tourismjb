import 'package:flutter/material.dart';

class NearbyScreen extends StatefulWidget {
  const NearbyScreen({super.key});

  @override
  State<NearbyScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NearbyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Nearby'),
      ),
    );
  }
}

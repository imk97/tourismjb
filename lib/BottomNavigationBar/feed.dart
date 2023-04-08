import 'package:flutter/material.dart';

void main() {
  runApp(const FeedScreen());
}

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Feed'),
      ),
    );
  }
}

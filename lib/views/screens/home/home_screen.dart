import 'package:flutter/material.dart';

import '../../widgets/story_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: StoryListViews(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../widgets/story_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Wrap(
            children: [
              ...List.generate(
                10,
                (index) => const StoryCard(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
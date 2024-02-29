import 'package:flutter/material.dart';
import 'package:storyverse/views/screens/home/story_details_screen.dart';

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
                (index) => StoryCard(
                  onTapStoryCard: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const StoryDetailsScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

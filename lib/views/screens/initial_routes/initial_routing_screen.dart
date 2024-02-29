import 'package:flutter/material.dart';
import 'package:storyverse/views/screens/initial_routes/app_bottom_navigation.dart';

class InitialRoutingScreen extends StatelessWidget {
  const InitialRoutingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              "Loading..",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          );
        }
        return const AppBottomNavigation();
      },
    );
  }
}

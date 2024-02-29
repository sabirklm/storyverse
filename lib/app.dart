import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storyverse/views/screens/initial_routes/initial_routing_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Story Verse',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
        fontFamily: GoogleFonts.sen().fontFamily,
      ),
      home: const InitialRoutingScreen(),
    );
  }
}

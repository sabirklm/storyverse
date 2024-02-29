import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storyverse/mock_data/story_type_mock_data.dart';

class StoryDetailsScreen extends StatelessWidget {
  const StoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Implement story details screen
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Implement share story
            },
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {
              // TODO: Implement save story
            },
            icon: const Icon(Icons.bookmark),
          ),
          IconButton(
            onPressed: () {
              // TODO: Implement report story
            },
            icon: const Icon(Icons.report),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Chapter 1",
                          style: GoogleFonts.sen(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "শুরু",
                        style: GoogleFonts.sen(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        chapter1,
                        style: GoogleFonts.sen(
                          fontSize: 16,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  color: Colors.purple,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minWidth: width / 2.5,
                  child: Text(
                    "Previous Chapter",
                    style: GoogleFonts.sen(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // TODO: Save the story
                  },
                ),
                MaterialButton(
                  color: Colors.purple,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minWidth: width / 2.5,
                  child: Text(
                    "Next Chapter",
                    style: GoogleFonts.sen(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    // TODO: Save the story
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

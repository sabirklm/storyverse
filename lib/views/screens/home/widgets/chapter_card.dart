import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../mock_data/story_type_mock_data.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(16),
      width: width,
      height: height,
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}

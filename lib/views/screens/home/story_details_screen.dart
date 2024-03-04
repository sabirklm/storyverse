import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storyverse/bloc/chapters_bloc.dart';
import '/views/screens/home/widgets/chapter_card.dart';

class StoryDetailsScreen extends StatefulWidget {
  final String bookId;
  final String chapterId;

  const StoryDetailsScreen({super.key, required this.bookId, required this.chapterId});

  @override
  State<StoryDetailsScreen> createState() => _StoryDetailsScreenState();
}

class _StoryDetailsScreenState extends State<StoryDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ChaptersBloc>().add(
          LoadChapterEvent(
            bookId: widget.bookId,
            chapterId: widget.chapterId,
          ),
        );
  }

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
              // TODO: Implement delete story
            },
            icon: const Icon(Icons.favorite),
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
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                  10,
                  (index) => const ChapterCard(),
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

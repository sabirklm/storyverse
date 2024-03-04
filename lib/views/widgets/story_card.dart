import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storyverse/models/story.dart';

import '../../bloc/home_bloc.dart';
import '../screens/home/story_details_screen.dart';

var sampleImage =
    "https://3.bp.blogspot.com/-TNA5U3pd_Ds/VxWzaYUDSYI/AAAAAAAAAes/kQzGWtkZzhcojRQwCng45yKl2xESsWTeACLcB/s1600/22335838bc3928555ab55899d146ce0c0e703c3f.jpg";

class StoryCard extends StatelessWidget {
  final void Function()? onTapStoryCard;
  final Story story;
  const StoryCard({
    super.key,
    this.onTapStoryCard,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTapStoryCard,
      child: Container(
        width: width > 225 * 2 ? 225 : width * 0.44,
        height: 260,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // boxShadow: boxShadow,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(1, 7),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (story.imageUrl != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "${story.imageUrl}",
                  height: 180,
                  width: width * 0.45,
                  fit: BoxFit.fitWidth,
                  loadingBuilder: (context, child, loadingProgress) {
                    var progress = loadingProgress?.cumulativeBytesLoaded;
                    var total = loadingProgress?.expectedTotalBytes;
                    if (loadingProgress == null) return child;
                    double opacity =
                        min(1 - ((progress ?? 0) / (total ?? 1)), 1);
                    return Container(
                      color: Colors.grey.withOpacity(opacity),
                      height: 100,
                      width: width * 0.45,
                    ).animate().shimmer(duration: 1000.ms);
                  },
                ).animate().fadeIn(duration: 1000.ms),
              ),
            const SizedBox(height: 8),
            Text(
              "${story.title}",
              style: GoogleFonts.sen(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "By ${story.author}",
              style: GoogleFonts.sen(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryListViews extends StatefulWidget {
  const StoryListViews({super.key});

  @override
  State<StoryListViews> createState() => _StoryListViewsState();
}

class _StoryListViewsState extends State<StoryListViews> {
  @override
  void initState() {
    context.read<HomeBloc>().add(GetStoriesEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        // if (state is HomeError) {
        //   return Center(
        //     child: Text(state.message),
        //   );
        // }
        if (state is HomeLoaded) {
          return ListView(
            children: [
              Wrap(
                children: [
                  ...List.generate(
                    state.stories.length,
                    (index) => StoryCard(
                      story: state.stories[index],
                      onTapStoryCard: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const StoryDetailsScreen(
                                bookId: '',
                                chapterId: "null",
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          );
        }
        return Container();
      },
      listener: (BuildContext context, state) {
        print(state);
      },
    );
  }
}

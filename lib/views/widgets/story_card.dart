import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

var sampleImage =
    "https://3.bp.blogspot.com/-TNA5U3pd_Ds/VxWzaYUDSYI/AAAAAAAAAes/kQzGWtkZzhcojRQwCng45yKl2xESsWTeACLcB/s1600/22335838bc3928555ab55899d146ce0c0e703c3f.jpg";

class StoryCard extends StatelessWidget {
  final void Function()? onTapStoryCard;
  const StoryCard({
    super.key,
    this.onTapStoryCard,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTapStoryCard,
      child: Container(
        width: width > 225 * 2 ? 225 : width * 0.44,
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
            // if (vehicle.image != null && vehicle.image!.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                sampleImage,
                height: 180,
                width: width * 0.45,
                fit: BoxFit.fitWidth,
                loadingBuilder: (context, child, loadingProgress) {
                  var progress = loadingProgress?.cumulativeBytesLoaded;
                  var total = loadingProgress?.expectedTotalBytes;
                  if (loadingProgress == null) return child;
                  double opacity = min(1 - ((progress ?? 0) / (total ?? 1)), 1);
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
              "চাঁদের পাহাড়",
              style: GoogleFonts.sen(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "বিভূতিভূষণ বন্দ্যোপাধ্যায়",
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

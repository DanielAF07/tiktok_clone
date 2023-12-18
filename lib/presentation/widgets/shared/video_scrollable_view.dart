import 'package:TokTik/domain/entities/video_post.dart';
import 'package:TokTik/presentation/widgets/shared/video_buttons.dart';
import 'package:TokTik/presentation/widgets/video/fullscreen_player.dart';
import 'package:flutter/material.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(children: [
          // Player + Gradient
          SizedBox.expand(
            child: FullScreenPlayer(
              caption: videoPost.caption,
              videoUrl: videoPost.videoUrl,
            ),
          ),

          // Buttons
          Positioned(
            bottom: 40,
            right: 20,
            child: VideoButtons(video: videoPost),
          ),
        ]);
      },
    );
  }
}

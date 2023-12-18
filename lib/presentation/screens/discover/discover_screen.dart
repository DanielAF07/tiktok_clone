import 'package:TokTik/presentation/providers/discover_provider.dart';
import 'package:TokTik/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();
    final initialLoading = discoverProvider.initialLoading;

    return Scaffold(
      body: initialLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
          : VideoScrollableView(videos: discoverProvider.videos),
    );
  }
}

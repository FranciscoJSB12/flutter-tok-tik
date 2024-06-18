import 'package:flutter/material.dart';
import 'package:tok_tik_flutter/domain/entities/video_post.dart';
import 'package:tok_tik_flutter/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepository videoPostsRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videoPostsRepository,
  });

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final newVideos = await videoPostsRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);

    initialLoading = false;

    notifyListeners();
  }
}

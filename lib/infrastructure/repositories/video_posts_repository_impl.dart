import 'package:tok_tik_flutter/domain/datasources/video_posts_datasource.dart';
import 'package:tok_tik_flutter/domain/entities/video_post.dart';
import 'package:tok_tik_flutter/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource videoDatasource;

  VideoPostsRepositoryImpl({
    required this.videoDatasource,
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoDatasource.getTrendingVideosByPage(page);
  }
}

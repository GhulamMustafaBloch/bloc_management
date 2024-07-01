import 'package:block_management/data/models/post_model.dart';

abstract class PostState {}

class PostLoadingState extends PostState {}

class PostLoadedgState extends PostState {
  final List<PostModel> posts;

  PostLoadedgState(this.posts);
}

class PostErrorgState extends PostState {
  final String errorMessage;
  PostErrorgState(this.errorMessage);
}

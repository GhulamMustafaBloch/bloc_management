// ignore_for_file: prefer_final_fields, use_rethrow_when_possible

import 'package:block_management/data/models/post_model.dart';
import 'package:block_management/data/repositories/post_repositorie.dart';
import 'package:block_management/logic/cubit/post_cubit/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState>{
  PostCubit() : super(PostLoadingState()){
    fetchPosts();
  }
  PostRepositorie _postRepositorie = PostRepositorie();

  void fetchPosts() async {
    try {
      List<PostModel> posts = await _postRepositorie.fetchPosts();
      emit(PostLoadedgState(posts));
      
    } catch (ex) {
      emit(PostErrorgState(ex.toString()));
    }

  }
}
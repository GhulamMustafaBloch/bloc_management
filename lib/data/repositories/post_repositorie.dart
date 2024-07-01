import 'package:block_management/data/models/post_model.dart';
import 'package:block_management/data/repositories/api/api.dart';
import 'package:dio/dio.dart';

class PostRepositorie{
  API api = API();
  Future<List<PostModel>> fetchPosts() async { 
    try {
      Response response = await api.sendRequest.get('/posts');
      // handle response
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMap) => PostModel.fromJson(postMap)).toList();
      } catch (ex) {
        // handle error
        throw ex;
        }
   }
}
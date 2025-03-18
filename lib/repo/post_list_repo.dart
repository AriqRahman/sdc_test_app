import 'dart:convert';
import 'dart:developer';

import 'package:sdc_test_app/models/post_model.dart';

import '../api_service/api_services.dart';
import '../api_service/base_service.dart';
import '../utlis/api_constants.dart';
class PostListRepository {
  final BaseService _apiService = ApiService();

  Future<List<PostModel>> fetchPostList() async {
    dynamic response = await _apiService.getGetResponse(ApiConstants.postList);
    List<PostModel> postList = [];
    response.forEach((item) {
      postList.add(PostModel.fromJson(item));
    });
    return postList;
  }
}

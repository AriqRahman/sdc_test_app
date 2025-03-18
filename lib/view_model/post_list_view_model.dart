import 'dart:developer';
import 'package:get/get.dart';

import '../models/post_model.dart';
import '../repo/post_list_repo.dart';

class PostListViewModel extends GetxController {
  var isLoading = false.obs;
  var postList = <PostModel>[].obs;

  @override
  void onInit() async {
    super.onInit();
    fetchPostData();
  }

  _showProgressBar() {
    isLoading.value = true;
    update();
  }

  _hideProgressBar() {
    isLoading.value = false;
    update();
  }

  Future<void> fetchPostData() async {
    _showProgressBar();
    try {
      postList.value = await PostListRepository().fetchPostList();
      _hideProgressBar();
    } catch (e) {
      log(e.toString());
    } finally {
      _hideProgressBar();
    }
  }
}
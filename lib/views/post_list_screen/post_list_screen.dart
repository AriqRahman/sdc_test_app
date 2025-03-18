import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sdc_test_app/views/post_list_screen/widgets/post_list_widget.dart';

import '../../view_model/post_list_view_model.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostListViewModel>(
      builder: (postListViewModel) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            title: const Text('Post List'),
            centerTitle: true,
          ),
          body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: postListViewModel.postList.length,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int index) {
              return PostListWidget(
                postModel: postListViewModel.postList[index],
              );
            },
          ),
        );
      },
    );
  }
}

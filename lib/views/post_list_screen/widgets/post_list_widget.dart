import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sdc_test_app/models/post_model.dart';

import '../../../utlis/app_colors.dart';

class PostListWidget extends StatelessWidget {
  PostModel postModel;

  static const String assetName = 'assets/images/svg/pen.svg';

  PostListWidget({super.key, required this.postModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: SvgPicture.asset(assetName),
          ), // No need for an extra Container
          const SizedBox(height: 10), // Added spacing
          Text(
            "TITLE: ${postModel.title}",
            style: TextStyle(fontSize: 20, color: AppColors.primaryColor),
          ),
          const SizedBox(height: 10),
          Text(postModel.body ?? "No content available"), // Handling null value
        ],
      ),
    );
  }
}

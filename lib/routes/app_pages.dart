import 'package:get/get.dart';
import '../views/post_list_screen/post_list_screen.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.POST_LIST_SCREEN,
      page: () => const PostListScreen(),
    ),
  ];
}
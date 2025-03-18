import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sdc_test_app/routes/app_routes.dart';

import 'routes/app_pages.dart';
import 'view_model_binding/view_model_binding.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SDC Test App',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white,
        fontFamily: "Roboto",

      ),
      initialBinding: ViewModelBinding(),
      initialRoute: AppRoutes.POST_LIST_SCREEN,
      getPages: AppPages.list,
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_list_controller.dart';

class CategoryListView extends GetView<CategoryListController> {
  const CategoryListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CategoryListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CategoryListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

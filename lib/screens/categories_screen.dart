import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../widgets/category_items.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      children: dummyCategories
          .map((cData) => CategoryItem(cData.id, cData.title, cData.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}

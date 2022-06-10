import 'package:flutter/material.dart';
import '../../../../shared/theme/theme.dart';
import '../../../models/models.dart';

class CategoriesComponent extends StatelessWidget {
  const CategoriesComponent({Key? key, required this.listCategories})
      : super(key: key);
  final List<CategoryModel> listCategories;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        // color: Colors.amber,
        padding: const EdgeInsets.only(top: 8),
        height: MediaQuery.of(context).size.height * 0.16,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryItem(categoryModel: listCategories[index]);
          },
          itemCount: listCategories.length,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.categoryModel}) : super(key: key);
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.cardBackgroundColor,
            radius: 36,
            child: Icon(
              categoryModel.icon,
              color: AppColors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 74,
            child: Text(
              categoryModel.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

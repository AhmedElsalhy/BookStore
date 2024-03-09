import 'package:book_store/Features/category/presentation/views/widgets/custom_category_item.dart';
import 'package:book_store/Features/home/presentation/views/home_view.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose your category',
              style: Styles.textStyle20,
            ),
            const SizedBox(
              height: 20,
            ),
            GridViewItem(
                // onCategorySelected: (selectedCategory) {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => HomeView(category: selectedCategory),
                //     ),
                //   );
                // },
                ),
          ],
        ),
      ),
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    // required this.onCategorySelected,
  });

  // final ValueChanged<String> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 50,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        List<String> imagePaths = [
          'assets/images/Programming.png',
          'assets/images/Fantasy.png',
          'assets/images/History.png',
          'assets/images/Sports.png',
        ];
        List<String> categories = [
          'Programming',
          'Fantasy',
          'History',
          'Sports',
        ];
        return CustomCategoryItem(
          onTap: () {
            // onCategorySelected(categories[index]);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeView(category: categories[index]),
              ),
            );
          },
          imagePath: imagePaths[index],
        );
      },
    );
  }
}

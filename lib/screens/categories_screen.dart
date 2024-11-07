import 'package:flutter/material.dart';
import 'package:music_app/data/dummy_data.dart';
import 'package:music_app/models/category.dart';
import 'package:music_app/models/music.dart';
import 'package:music_app/screens/music_screen.dart';
import 'package:music_app/widgets/category_grid_item.dart';
 
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.availableMusic});
 
  final List<Music> availableMusic;
 
  void _selectCategory(BuildContext context, Category category) {
    final filteredMusics = availableMusic
        .where((music) => music.categories.contains(category.id))
        .toList();
 
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MusicScreen(
          title: category.title,
          musicScreen: filteredMusics,
        ),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return GridView(
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 20,
        mainAxisExtent: 150, 
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          )
      ],
    );
  }
}
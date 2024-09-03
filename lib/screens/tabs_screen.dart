import 'package:flutter/material.dart';
import 'package:meals_app/models/music.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/music_screen.dart';

class TabsScreen extends StatefulWidget {
 const TabsScreen({super.key});
 
  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectPageIndex = 0;
  final List<Music> _favoriteMusics = [];

  void _toggleMusicFavoriteStatus(Music music) {
    final isExisting = _favoriteMusics.contains(music);

    if (isExisting == true) {
      _favoriteMusics.remove(music);
    } else {
      _favoriteMusics.add(music);
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(onToggleFavorite: _toggleMusicFavoriteStatus,);
    var activePageTitle = 'Categories';

    if (_selectPageIndex == 1) {
      activePage = MusicScreen(musicScreen: [], onToggleFavorite: _toggleMusicFavoriteStatus,);
      activePageTitle = 'Your Favorites';
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorite'),
        ],
      ),
    );
  }
}
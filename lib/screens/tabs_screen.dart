import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/music.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/filter_screen.dart';
import 'package:meals_app/screens/music_screen.dart';
import 'package:meals_app/widgets/main_drawer.dart';

const kInitialFilter = {
    Filter.heartBroken: false,
    Filter.vibing: false,
  };

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
  Map<Filter, bool> _selectedFilters = kInitialFilter;

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _toggleMusicFavoriteStatus(Music music) {
    final isExisting = _favoriteMusics.contains(music);

    if (isExisting) {
      setState(() {
        _favoriteMusics.remove(music);
      });
      _showInfoMessage('Music is no longer a favorite');
    } else {
      setState(() {
        _favoriteMusics.add(music);
      });
      _showInfoMessage('Favorited!');
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();

    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => FilterScreen(currentFilters: _selectedFilters,),
        ),
      );
      setState(() {
      _selectedFilters = result ?? kInitialFilter;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableMusic = dummyMusic.where((music) {
      if(_selectedFilters[Filter.heartBroken]! && !music.isHeartBroken){
        return false;
      }
      if(_selectedFilters[Filter.vibing]! && !music.isVibing){
        return false;
      }
      return true;
    }).toList();

    Widget activePage = CategoriesScreen(
      onToggleFavorite: _toggleMusicFavoriteStatus,
      availableMusic: availableMusic,
    );
    var activePageTitle = 'Categories';

    if (_selectPageIndex == 1) {
      activePage = MusicScreen(
        musicScreen: _favoriteMusics,
        onToggleFavorite: _toggleMusicFavoriteStatus,
      );
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorite'),
        ],
      ),
    );
  }
}

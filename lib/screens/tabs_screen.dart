import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
 
import 'package:music_app/screens/categories_screen.dart';
import 'package:music_app/screens/filter_screen.dart';
import 'package:music_app/screens/music_screen.dart';
import 'package:music_app/widgets/main_drawer.dart';
import 'package:music_app/providers/favorites_provider.dart';
import 'package:music_app/providers/filters_provider.dart';
 
const kInitialFilter = {
  Filter.heartBroken: false,
  Filter.vibing: false,
};
 
class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});
 
  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}
 
class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectPageIndex = 0;
 
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 
  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }
 
  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
 
    if (identifier == 'filters') {
      await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => const FilterScreen(),
        ),
      );
    }
  }
 
  @override
  Widget build(BuildContext context) {
    final availableMusic = ref.watch(filteredMusicProvider);
 
    Widget activePage = CategoriesScreen(
      availableMusic: availableMusic,
    );
    var activePageTitle = 'Categories';
 
    if (_selectPageIndex == 1) {
      final favoriteMusics = ref.watch(favoriteMusicProvider);
      activePage = MusicScreen(
        musicScreen: favoriteMusics,
      );
      activePageTitle = 'Your Favorites';
    }
 
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(activePageTitle),
        automaticallyImplyLeading: false,
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      body: Column(
        children: [
          Expanded(
            child: activePage,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        child: const Icon(Icons.menu),
      ),
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
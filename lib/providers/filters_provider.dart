import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/providers/musics_provider.dart';

enum Filter {
  heartBroken,
  vibing,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.heartBroken: false,
          Filter.vibing: false,
        });
  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filterProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);

final filteredMusicProvider = Provider((ref) {
  final musics = ref.watch(musicProvier);
  final activeFilters = ref.watch(filterProvider);
  return musics.where((music) {
    if (activeFilters[Filter.heartBroken]! && !music.isHeartBroken){
      return false;
    }
    if (activeFilters[Filter.heartBroken]! && !music.isHeartBroken){
      return false;
    }
    if (activeFilters[Filter.vibing]! && !music.isVibing){
      return false;
    }
    return true;
  }).toList();
});

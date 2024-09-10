import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  heartBroken,
  vibing,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier() : super({
    Filter.heartBroken: false,
    Filter.vibing: false,
  });
  void setFilter(Filter filter, bool isActive){
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filterProvider = StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>((ref) => FiltersNotifier());

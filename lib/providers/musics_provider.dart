import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/data/dummy_data.dart';

final musicProvier = Provider((ref) {
  return dummyMusic;
});
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spotify_clone/data.dart';

final selectedSongProvider = StateProvider.autoDispose<Song?>((ref) => null);

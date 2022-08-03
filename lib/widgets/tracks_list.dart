import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spotify_clone/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/providers/selected_song.dart';

class TracksList extends ConsumerWidget {
  final List<Song> tracks;
  const TracksList({Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seletectedSong = ref.watch(selectedSongProvider);
    return DataTable(
        showCheckboxColumn: false,
        columns: const [
          DataColumn(label: Text('Title')),
          DataColumn(label: Text('Artist')),
          DataColumn(label: Text('Album')),
          DataColumn(label: Icon(Icons.access_time)),
        ],
        rows: tracks.map((e) {
          final selected = seletectedSong?.id == e.id;
          final textStyle = TextStyle(
              color: selected
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).iconTheme.color);
          return DataRow(
              key: ValueKey(e.id),
              selected: selected,
              onSelectChanged: (selected) {
                if (selected == true) {
                  final notifier = ref.read(selectedSongProvider.notifier);
                  notifier.state = e;
                }
              },
              cells: [
                DataCell(Text(
                  e.title,
                  style: textStyle,
                )),
                DataCell(Text(
                  e.artist,
                  style: textStyle,
                )),
                DataCell(Text(
                  e.album,
                  style: textStyle,
                )),
                DataCell(Text(
                  e.duration,
                  style: textStyle,
                )),
              ]);
        }).toList());
  }
}

import 'package:flutter_spotify_clone/data.dart';
import 'package:flutter/material.dart';

class TracksList extends StatelessWidget {
  final List<Song> tracks;
  const TracksList({Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
        showCheckboxColumn: true,
        // not working
        dataRowColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Theme.of(context).colorScheme.primary.withOpacity(0.08);
          }
          return null;
        }),
        columns: const [
          DataColumn(label: Text('Title')),
          DataColumn(label: Text('Artist')),
          DataColumn(label: Text('Album')),
          DataColumn(label: Icon(Icons.access_time)),
        ],
        rows: tracks.map((e) {
          return DataRow(key: ValueKey(e.id),
              // selected: true,
              // onSelectChanged: (selected) {},
              cells: [
                DataCell(Text(
                  e.title,
                  style: TextStyle(color: Theme.of(context).iconTheme.color),
                )),
                DataCell(Text(
                  e.artist,
                  style: TextStyle(color: Theme.of(context).iconTheme.color),
                )),
                DataCell(Text(
                  e.album,
                  style: TextStyle(color: Theme.of(context).iconTheme.color),
                )),
                DataCell(Text(
                  e.duration,
                  style: TextStyle(color: Theme.of(context).iconTheme.color),
                )),
              ]);
        }).toList());
  }
}

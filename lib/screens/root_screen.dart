import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spotify_clone/data.dart';
import 'package:flutter_spotify_clone/providers/selected_song.dart';
import 'package:flutter_spotify_clone/screens/playlist_screen.dart';
import 'package:flutter_spotify_clone/widgets/current_track.dart';
import 'package:flutter_spotify_clone/widgets/side_menu.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Row(
          children: const [
            SideMenu(),
            Expanded(child: PlayListScreen(playlist: lofihiphopPlaylist))
          ],
        )),
        const CurrentTrack()
      ]),
    );
  }
}

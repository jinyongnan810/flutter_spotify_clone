import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_clone/data.dart';
import 'package:flutter_spotify_clone/widgets/playlist_header.dart';

class PlayListScreen extends StatefulWidget {
  final Playlist playlist;
  const PlayListScreen({Key? key, required this.playlist}) : super(key: key);

  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 100,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 10,
              ),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.chevron_left,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.chevron_right,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          actions: [
            TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                  primary: Theme.of(context).iconTheme.color),
              icon: const Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              label: const Text('kin'),
            ),
            const SizedBox(
              width: 8,
            ),
            IconButton(
                onPressed: () {},
                padding: const EdgeInsets.only(),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                const Color(0xFFAF1018),
                Theme.of(context).backgroundColor
              ],
                  stops: const [
                0,
                0.3
              ])),
          child: Scrollbar(
            controller: _scrollController,
            thumbVisibility: true,
            child: ListView(
                controller: _scrollController,
                children: [PlaylistHeader(playlist: widget.playlist)]),
          ),
        ));
  }
}

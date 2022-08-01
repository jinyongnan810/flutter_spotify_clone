import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_clone/data.dart';

class PlaylistHeader extends StatelessWidget {
  final Playlist playlist;
  const PlaylistHeader({Key? key, required this.playlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              Image.asset(
                playlist.imageURL,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'PLAYLIST',
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    playlist.name,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    playlist.description,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Created by ${playlist.creator}   ${playlist.songs.length} Songs, ${playlist.duration}',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ))
            ],
          ),
        ),
        _PlaylistFollowers(followers: playlist.followers)
      ],
    );
  }
}

class _PlaylistFollowers extends StatelessWidget {
  final String followers;
  const _PlaylistFollowers({Key? key, required this.followers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              primary: Theme.of(context).iconTheme.color,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 48)),
          child: const Text('Play'),
        ),
        const SizedBox(
          width: 16,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 30,
            )),
        const Spacer(),
        Text(
          'Followers\n$followers',
          style: Theme.of(context).textTheme.overline!.copyWith(fontSize: 12),
          textAlign: TextAlign.right,
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}

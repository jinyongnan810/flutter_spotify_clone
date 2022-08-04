import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spotify_clone/data.dart';
import 'package:flutter_spotify_clone/providers/selected_song.dart';

class CurrentTrack extends ConsumerWidget {
  const CurrentTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSong = ref.watch(selectedSongProvider);
    return Container(
        width: double.infinity,
        height: 84,
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _TrackInfo(
                track: selectedSong,
              ),
              _TrackControls(
                track: selectedSong,
              ),
              _MoreControls()
            ],
          ),
        ));
  }
}

class _TrackInfo extends StatelessWidget {
  final Song? track;
  const _TrackInfo({Key? key, this.track}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: track != null,
      child: Row(
        children: [
          Image.asset(
            'assets/lofigirl.jpg',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                track?.title ?? '',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                track?.artist ?? '',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 12, color: Colors.grey[300]),
              )
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline))
        ],
      ),
    );
  }
}

class _TrackControls extends StatelessWidget {
  final Song? track;
  const _TrackControls({Key? key, this.track}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              icon: const Icon(
                Icons.shuffle,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              icon: const Icon(
                Icons.skip_previous_outlined,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              icon: const Icon(
                Icons.play_circle_outline,
                size: 34,
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              icon: const Icon(
                Icons.skip_next_outlined,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(),
              icon: const Icon(
                Icons.repeat,
                size: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              '0:00',
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(2.5)),
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              track?.duration ?? '0:00',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        )
      ],
    );
  }
}

class _MoreControls extends StatelessWidget {
  const _MoreControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.devices_outlined,
              size: 20,
            )),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_up_outlined,
                  size: 20,
                )),
            Container(
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(2.5)),
              width: 70,
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.fullscreen_outlined,
              size: 20,
            )),
      ],
    );
  }
}

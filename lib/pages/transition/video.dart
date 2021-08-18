import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final String path;
  final Color backgroundColor;
  final String title;
  final String summary;
  const Video({
    Key key,
    @required this.path,
    this.backgroundColor = Colors.black,
    this.title,
    this.summary,
  }) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      widget.path,
    );
    _controller.initialize();
    _controller.setLooping(true);
    // _controller.

    setState(() {});
    // _controller
    Future.delayed(Duration(seconds: 1), () {
      _controller.play();
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_controller.value.isPlaying) {
            _controller.pause();
          } else {
            _controller.play();
          }
        });
        _controller.play();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 64),
        width: 830,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 830,
              height: 436,
              // color: widget.backgroundColor,
              child: AspectRatio(
                aspectRatio: 1,
                child: VideoPlayer(_controller),
              ),
            ),
            Container(
              width: 830,
              color: Color.fromARGB(25, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 12, left: 36, right: 36, bottom: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.summary,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

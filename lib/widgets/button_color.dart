import 'package:flutter/material.dart';

class FacebookPostButtons extends StatefulWidget {
  const FacebookPostButtons({Key? key}) : super(key: key);

  @override
  _FacebookPostButtonsState createState() => _FacebookPostButtonsState();
}

class _FacebookPostButtonsState extends State<FacebookPostButtons> {
  Color _likeButtonColor = Colors.grey;
  Color _commentButtonColor = Colors.grey;
  Color _shareButtonColor = Colors.grey;

  void _changeLikeButtonColor() {
    setState(() {
      _likeButtonColor == Colors.blue
          ? _likeButtonColor = Colors.grey
          : _likeButtonColor = Colors.blue;
    });
  }

  void _changeCommentButtonColor() {
    setState(() {
      _commentButtonColor == Colors.blue
          ? _commentButtonColor = Colors.grey
          : _commentButtonColor = Colors.blue;
    });
  }

  void _changeShareButtonColor() {
    setState(() {
      _shareButtonColor == Colors.blue
          ? _shareButtonColor = Colors.grey
          : _shareButtonColor = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () => _changeLikeButtonColor(),
          style: TextButton.styleFrom(primary: _likeButtonColor),
          icon: const Icon(Icons.thumb_up_alt_outlined),
          label: const Text("Like"),
        ),
        TextButton.icon(
          onPressed: () => _changeCommentButtonColor(),
          style: TextButton.styleFrom(primary: _commentButtonColor),
          icon: const Icon(Icons.mode_comment_outlined),
          label: const Text("Comment"),
        ),
        TextButton.icon(
          onPressed: () => _changeShareButtonColor(),
          style: TextButton.styleFrom(primary: _shareButtonColor),
          icon: const Icon(Icons.share_outlined),
          label: const Text("Share"),
        ),
      ],
    );
  }
}

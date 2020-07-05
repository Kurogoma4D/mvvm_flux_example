import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({Key key, this.isLiked, this.onTap}) : super(key: key);

  final bool isLiked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.star : Icons.star_border,
        color: Colors.orange,
      ),
      onPressed: onTap,
    );
  }
}

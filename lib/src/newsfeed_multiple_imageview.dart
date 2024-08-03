library newsfeed_multiple_imageview;

import 'package:flutter/material.dart';
import 'package:newsfeed_multiple_imageview/src/image_viewer.dart';
import 'package:newsfeed_multiple_imageview/src/multiple_image_view.dart';

class NewsfeedMultipleImageView extends StatelessWidget {
  final List<String> imageUrls;
  final double marginLeft;
  final double marginTop;
  final double marginRight;
  final double marginBottom;

  const NewsfeedMultipleImageView({
    super.key,
    this.marginLeft = 0,
    this.marginTop = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth,
        height: constraints.maxWidth,
        margin: EdgeInsets.fromLTRB(
          marginLeft,
          marginTop,
          marginRight,
          marginBottom,
        ),
        child: GestureDetector(
          child: MultipleImageView(imageUrls: imageUrls),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImageViewer(imageUrls: imageUrls),
            ),
          ),
        ),
      ),
    );
  }
}

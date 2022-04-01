import 'package:flutter/cupertino.dart';

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.imagePath,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String imagePath;
  final int width;
  final int height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
      child: Image.network(
        imagePath,
        width: width.toDouble(),
        height: height.toDouble(),
        fit: BoxFit.cover,
      ),
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pelix/core/colors/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 200,
            child: CachedNetworkImage(
              imageUrl: newAndHotTempImage,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(
                strokeWidth: 2,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )),
        const Positioned(
          bottom: 10,
          right: 10,
          child: Icon(
            Icons.volume_off_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

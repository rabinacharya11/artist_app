import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCacheImage extends StatelessWidget {
  final String url;
  final BoxFit fit;
  const CustomCacheImage({
    super.key,
    required this.url,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: url,
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => Column(
        children: [
          const Icon(
            Icons.error,
            color: Colors.red,
          ),
          Text(
            error,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

class CustomCacheImageProvider extends StatelessWidget {
  final String url;
  const CustomCacheImageProvider({super.key, required this.url});

  @override
  Image build(BuildContext context) {
    return Image(
      image: CachedNetworkImageProvider(url),
    );
  }
}

cachedImage(url) => Image(
      image: CachedNetworkImageProvider(url),
    ).image;

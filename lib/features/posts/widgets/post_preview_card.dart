import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:social/domain/models/post_preview.dart';
import 'package:social/presentation/widgets/app_network_image.dart';

class PostPreviewCard extends StatelessWidget {
  final PostPreview post;

  const PostPreviewCard({
    required this.post,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final cardSize = screenSize.width - 32;
    final contentWidth = cardSize - 96;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(28),
          ),
          child: AppNetworkImage(
            size: cardSize,
            boxFit: BoxFit.cover,
            url: post.image,
          ),
        ),
        Positioned(
          left: 16,
          bottom: 16,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: contentWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.text,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: ClipOval(
                              child: AppNetworkImage(
                                size: 40,
                                boxFit: BoxFit.cover,
                                url: post.owner.picture,
                              ),
                            ),
                          ),
                          Text(
                            '${post.owner.firstName} ${post.owner.lastName}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

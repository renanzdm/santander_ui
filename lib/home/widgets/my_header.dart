import 'package:flutter/material.dart';

class MyHeader extends SliverPersistentHeaderDelegate {
  final double maxExtentHeight;

  MyHeader({required this.maxExtentHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var sizes = MediaQuery.of(context).size;
    print(shrinkOffset);
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Container(
          color: Colors.red,
        ),
        Positioned(
          height: 160,
          width: 300,
          top: maxExtentHeight / 2 - shrinkOffset,
          left: (sizes.width) / 2 - 300 / 2,
          child: Opacity(
            opacity: (1 - shrinkOffset / maxExtentHeight),
            child: Container(
              color: Colors.blueAccent,
              height: 200,
              width: 200,
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => maxExtentHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

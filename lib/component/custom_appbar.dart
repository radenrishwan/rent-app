import 'package:flutter/material.dart';
import 'package:rent/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Size size;
  final Widget? bottom;
  const CustomAppBar({super.key, required this.size, this.bottom});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: Colors.white,
        padding: kBidPadding.copyWith(top: kDefaultPadding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network('https://avatars.githubusercontent.com/u/103234055?v=4', fit: BoxFit.cover),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.message,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                  ),
                ),
              ],
            ),
            const Spacer(),
            bottom ?? const SizedBox(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => size;
}

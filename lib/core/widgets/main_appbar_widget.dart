import 'package:flutter/material.dart';
import 'package:nytimes_news_project/core/constants/string/string_constants.dart';

class MainAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MainAppbarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        _buildPopupMenu()
      ],
    );
  }

  PopupMenuButton<dynamic> _buildPopupMenu() {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        const PopupMenuItem(
          child: Text(StringConstants.OPTIONS1),
        ),
        const PopupMenuItem(
          child: Text(StringConstants.OPTIONS2),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50.0);
}

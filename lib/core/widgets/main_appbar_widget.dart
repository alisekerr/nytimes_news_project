import 'package:flutter/material.dart';

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
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              child: Text('Seçenek 1'),
            ),
            const PopupMenuItem(
              child: Text('Seçenek 2'),
            ),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50.0);
}

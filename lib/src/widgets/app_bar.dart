import 'package:flutter/material.dart';

import '../../senibara.dart';

class SBAppBarBlank extends StatefulWidget with PreferredSizeWidget {
  const SBAppBarBlank({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size(double.infinity, 0);

  @override
  State<SBAppBarBlank> createState() => _SBAppBarBlankState();
}

class _SBAppBarBlankState extends State<SBAppBarBlank> {
  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}

class SBAppBar extends StatefulWidget with PreferredSizeWidget {
  final Widget? userAvatar;
  const SBAppBar({Key? key, required this.userAvatar}) : super(key: key);

  @override
  State<SBAppBar> createState() => _SBAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}

class _SBAppBarState extends State<SBAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      title:
          Image.asset('assets/logos/logo.png', height: SBData.bar1LogoHeight),
      actions: [
        widget.userAvatar ?? Container(),
        Container(width: 10),
      ],
    );
  }
}

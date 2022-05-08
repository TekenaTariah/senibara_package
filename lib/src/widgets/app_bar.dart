import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

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
  const SBAppBar({Key? key}) : super(key: key);

  @override
  State<SBAppBar> createState() => _SBAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}

class _SBAppBarState extends State<SBAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(SBUtils.toCamelCase(sbPackageInfo.appName)),
      // Wrap(
      //   children: [
      //     Image.asset('assets/logos/logo.png', height: 24),
      //     const SizedBox(width: 10),
      // ],
      // ),
      centerTitle: true,
      actions: const [CircleAvatar(radius: 14)],
    );
  }
}

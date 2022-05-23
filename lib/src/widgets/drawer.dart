import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

///This Widget creates a drawer. Remember to add your logo in the assets folder.
class SBDrawer extends StatelessWidget {
  final List<SBDrawerContent> contents;
  const SBDrawer({Key? key, required this.contents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              child: Image.asset('assets/logos/logo.png'),
              margin: EdgeInsets.zero),
          Expanded(child: SBDrawerContents(contents: contents)),
          const SBDrawerFooter(),
        ],
      ),
    );
  }
}

@immutable
class SBDrawerContent {
  final String routeName;
  final String title;
  const SBDrawerContent({required this.routeName, required this.title});
}

class SBDrawerContents extends StatelessWidget {
  final List<SBDrawerContent> contents;
  const SBDrawerContents({Key? key, required this.contents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: contents.length,
      separatorBuilder: (ctx, index) => const Divider(),
      itemBuilder: (ctx, index) {
        return ListTile(
          title: Text(contents[index].title),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.popAndPushNamed(context, contents[index].routeName);
          },
        );
      },
    );
  }
}

class SBDrawerFooter extends StatelessWidget {
  const SBDrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Created by ', style: TextStyle(fontSize: 12)),
              SBLogo(orientation: SBLogoOrientation.horizontal, height: 20),
            ],
          ),
        ),
      ],
    );
  }
}

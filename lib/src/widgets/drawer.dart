import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:senibara/senibara.dart';

///This Widget creates a drawer. Remember to add your logo in the assets folder.
class SBDrawer extends StatefulWidget {
  final List<SBDrawerContent> contents;
  final String? gamesRouteName;
  const SBDrawer({Key? key, required this.contents, this.gamesRouteName})
      : super(key: key);

  @override
  State<SBDrawer> createState() => _SBDrawerState();
}

class _SBDrawerState extends State<SBDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Theme(
      data: SBThemeData.copyWith(textTheme: GoogleFonts.robotoSlabTextTheme()),
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SBDrawerHeader(),
            SBDrawerContents(contents: widget.contents),
            Expanded(child: Container()),
            Visibility(
              visible: widget.gamesRouteName != null,
              child: ListTile(
                title: const SBColouredText(text: 'Play a Game'),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.gamepad_outlined)),
                onTap: () {
                  Navigator.popAndPushNamed(context, widget.gamesRouteName!);
                },
              ),
            ),
            Expanded(child: Container()),
            ListTile(
                title: const Text('License Page'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SBLicensesPage()));
                }),
            const SBDrawerFooter()
          ],
        ),
      ),
    ));
  }
}

class SBDrawerContent {
  final String leading;
  final String title;
  final String routeName;
  SBDrawerContent(
      {required this.leading, required this.title, required this.routeName});
}

class SBDrawerContents extends StatelessWidget {
  final List<SBDrawerContent> contents;
  const SBDrawerContents({Key? key, required this.contents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Opacity(
                opacity: 0.7,
                child: Image.asset(
                  contents[index].leading,
                  height: 24,
                )),
            title: Text(contents[index].title),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
            onTap: () {
              Navigator.popAndPushNamed(context, contents[index].routeName);
            },
          );
        },
        separatorBuilder: (ctx, index) => const Divider(),
        itemCount: contents.length);
  }
}

class SBDrawerHeader extends StatelessWidget {
  const SBDrawerHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const double closeButtonSize = 30;
    return Container(
      color: Colors.grey.shade300,
      height: SBData.toolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close, size: closeButtonSize)),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              'assets/logos/logo.png',
              height: SBData.drawerLogoHeight,
            ),
          ),
          const SizedBox(width: closeButtonSize),
        ],
      ),
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
            children: [
              const Text(
                'Created by',
                style: TextStyle(fontSize: 12),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text('Go To'),
                            content: const Text(
                                'You are about to be redirected to our home page: senibara.com'),
                            actions: [
                              TextButton(
                                child: const Text('No'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('Yes'),
                                onPressed: () {
                                  Navigator.popAndPushNamed(context, '');
                                },
                              ),
                            ],
                          ));
                },
                child: SBLogo(
                    orientation: SBLogoOrientation.horizontal, height: 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

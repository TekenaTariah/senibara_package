import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

class SBDrawer extends StatefulWidget {
  const SBDrawer({Key? key}) : super(key: key);

  @override
  State<SBDrawer> createState() => _SBDrawerState();
}

class _SBDrawerState extends State<SBDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).viewPadding.top),
      child: Column(
        children: const [
          SBDrawerHeader(),
          Expanded(child: SBDrawerContents()),
          SBDrawerFooter()
        ],
      ),
    ));
  }
}

class SBDrawerContents extends StatefulWidget {
  const SBDrawerContents({Key? key}) : super(key: key);

  @override
  State<SBDrawerContents> createState() => _SBDrawerContentsState();
}

class _SBDrawerContentsState extends State<SBDrawerContents> {
  var drawerItems = [
    {'title': 'Business', 'route': ''},
    {'title': 'Education', 'route': ''},
    {'title': 'HouseHold', 'route': ''},
    {'title': 'Colours', 'route': ''},
    {'title': 'Community', 'route': ''},
    {'title': 'Support', 'route': ''},
    {'title': 'Go to Senibara', 'route': ''},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: index == 0 ? EdgeInsets.zero : null,
            title: Text(drawerItems[index]['title']!),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '');
            },
          );
        },
        separatorBuilder: (ctx, index) => Divider(),
        itemCount: drawerItems.length);
  }
}

class SBDrawerHeader extends StatelessWidget {
  const SBDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      height: SBAppData.toolbarHeight,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close, size: 30)),
          const SizedBox(width: 10),
          Image.asset(
            'assets/logos/logo-st.png', //

            height: 40,
            package: 'senibara',
          ),
          const SizedBox(width: 10),
          Text('Tools',
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class SBDrawerFooter extends StatelessWidget {
  const SBDrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: () {},
      child: Text('Senibara'),
    ));
  }
}

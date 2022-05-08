import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Senibara.initializeApp(logoPath: 'assets/logos/logo.png');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: SBThemeData,
      home: const MyHomePage(title: 'Senibara Example Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
// This is my home page
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var drawerContents = [
    SBDrawerContent(title: 'Business', routeName: '/business'),
    SBDrawerContent(title: 'Education', routeName: '/education'),
    SBDrawerContent(title: 'HouseHold', routeName: '/household'),
    SBDrawerContent(title: 'Colours', routeName: '/colours'),
    SBDrawerContent(title: 'Community', routeName: '/community'),
    SBDrawerContent(title: 'Support', routeName: '/support'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.asset(
            'assets/logos/logo.png',
            height: 24,
          ),
          const SizedBox(width: 10),
          Text(
            SBUtils.toCamelCase(sbPackageInfo.appName),
            style: TextStyle(),
          )
        ]),
        actions: const [CircleAvatar(radius: 14)],
      ),
      drawer: SBDrawer(contents: drawerContents),
      body: const SBLicensesPage(),
      floatingActionButton:
          FloatingActionButton(child: SBLogo(height: 40), onPressed: () {}),
    );
  }
}
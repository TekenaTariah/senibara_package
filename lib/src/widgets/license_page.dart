// ignore_for_file: camel_case_types

import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class sbLicensesPage extends StatefulWidget {
  const sbLicensesPage({Key? key}) : super(key: key);

  @override
  State<sbLicensesPage> createState() => _sbLicensesPageState();
}

class _sbLicensesPageState extends State<sbLicensesPage> {
  String appName = '';
  String appVersion = '';
  String appLogo = 'assets/logos/colours_logo.png';
  bool fetchingLicenses = false;

  final SplayTreeMap<String, List<String>> packageLicenses = SplayTreeMap();

  void fetchLicenses() async {
    packageLicenses.clear();
    fetchingLicenses = true;
    LicenseRegistry.licenses.forEach((entry) {
      String paragraphText =
          '\n' + entry.paragraphs.map((e) => e.text).join('\n\n') + '\n';
      for (var package in entry.packages) {
        if (packageLicenses[package] == null) {
          packageLicenses[package] = [paragraphText];
        } else {
          packageLicenses[package]!.add(paragraphText);
        }
      }
    }).then((_) {
      setState(() {
        fetchingLicenses = false;
      });
    });
  }

  void fetchAppDetails() {
    PackageInfo.fromPlatform().then((value) {
      setState(() {
        appName = toCamelCase(value.appName);
        appVersion = value.version;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    fetchLicenses();
    fetchAppDetails();
  }

  final alphabets = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];

  String toCamelCase(String? text) {
    if (text == null) return '';

    text = text.toLowerCase();

    var result = '';
    var chars = text.split('');
    chars.asMap().forEach((index, char) {
      if (index == 0 || !alphabets.contains(chars[index - 1])) {
        result += char.toUpperCase();
      } else {
        result += char;
      }
    });

    return result;
  }

  @override
  Widget build(BuildContext context) {
    fetchAppDetails();
    // Styles
    const appTitleTextStyle = TextStyle(fontSize: 25, color: Colors.black);
    final appVersionTextStyle = TextStyle(color: Colors.grey.shade900);
    const legaleseTextStyle = TextStyle(color: Colors.black);
    const licenseTitleTextStyle = TextStyle(fontSize: 16);
    const licenseSubtitleTextStyle = TextStyle(
      fontSize: 14,
    );

    // Build
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Text(appName, style: appTitleTextStyle),
            Image.asset(appLogo, height: 60),
            Text(appVersion, style: appVersionTextStyle),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 32.0),
                child: const Text('Created by SeniBara',
                    style: legaleseTextStyle)),
            Visibility(
              visible: fetchingLicenses,
              child: const CircularProgressIndicator(),
            ),
            ...packageLicenses.keys
                .map((package) => Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      sbLicenseDescriptionPage(
                                          descriptions:
                                              packageLicenses[package])));
                        },
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            package,
                            style: licenseTitleTextStyle,
                          ),
                          subtitle: Text(
                            '${packageLicenses[package]?.length} ${packageLicenses[package]!.length > 1 ? 'licenses.' : 'license.'}',
                            style: licenseSubtitleTextStyle,
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}

abstract class Delete {
  static void now() {}
}

class sbLicenseDescriptionPage extends StatelessWidget {
  final List<String>? descriptions;
  const sbLicenseDescriptionPage({Key? key, required this.descriptions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 0),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return Text(descriptions![index]);
              },
              separatorBuilder: (ctx, index) => const Divider(),
              itemCount: descriptions?.length ?? 0),
        ));
  }
}

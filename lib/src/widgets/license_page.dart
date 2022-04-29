import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:senibara/senibara.dart';
import 'package:senibara/src/data/app_data.dart';

class SBLicensesPage extends StatefulWidget {
  final Widget appLogo;
  const SBLicensesPage({Key? key, required this.appLogo}) : super(key: key);

  @override
  State<SBLicensesPage> createState() => _SBLicensesPageState();
}

class _SBLicensesPageState extends State<SBLicensesPage> {
  String appName = '';
  String appVersion = '';
  bool fetchingLicenses = false;

  final SplayTreeMap<String, List<String>> packageLicenses = SplayTreeMap();

// fertches grouped licenses
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

  String toCamelCase(String? text) {
    if (text == null) return '';

    text = text.toLowerCase();

    var result = '';
    var chars = text.split('');
    chars.asMap().forEach((index, char) {
      if (index == 0 || !SBAppData.alphabets.contains(chars[index - 1])) {
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
    const appTitleTextStyle = TextStyle(fontSize: 25);
    final appVersionTextStyle = TextStyle();
    const legaleseTextStyle = TextStyle();
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
            SizedBox(
              child: widget.appLogo,
              height: SBAppData.defaultLogoHeight,
            ),
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
                                      SBLicenseDescriptionPage(
                                          package: package,
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

class SBLicenseDescriptionPage extends StatelessWidget {
  final String package;
  final List<String>? descriptions;
  const SBLicenseDescriptionPage(
      {Key? key, required this.package, required this.descriptions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(package)),
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

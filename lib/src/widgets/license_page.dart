import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

class SBLicensesPage extends StatefulWidget {
  const SBLicensesPage({Key? key}) : super(key: key);

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

  @override
  void initState() {
    super.initState();
    appName = SBUtils.toCamelCase(sbPackageInfo.appName);
    appVersion = sbPackageInfo.version;
    fetchLicenses();
  }

  @override
  Widget build(BuildContext context) {
    // Styles
    const appTitleTextStyle = TextStyle(fontSize: 25);
    final appVersionTextStyle = TextStyle();
    const legaleseTextStyle = TextStyle();
    const licenseTitleTextStyle = TextStyle(fontSize: 16);
    const licenseSubtitleTextStyle = TextStyle(
      fontSize: 14,
    );

    // Build
    return Scaffold(
      appBar: AppBar(title: Text('License Page'),),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Text(appName, style: appTitleTextStyle),
              const SizedBox(height: 10),
              Image.asset(sbAppLogoPath, height: 50),
              const SizedBox(height: 5),
              Text(appVersion, style: appVersionTextStyle),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 32.0),
                  child: const Text('Created by Senibara',
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

import 'package:package_info_plus/package_info_plus.dart';

class SBAppUtils {
  static Future<SBPackageInfo> getPackageInfo() async {
    var info = await PackageInfo.fromPlatform();
    return SBPackageInfo(info);
  }
}

class SBPackageInfo {
  late String appName;
  late String packageName;
  late String version;
  late String buildNumber;
  late String buildSignature;

  SBPackageInfo(PackageInfo info) {
    appName = info.appName;
    packageName = info.packageName;
    version = info.version;
    buildNumber = info.buildNumber;
    buildSignature = info.buildSignature;
  }
}

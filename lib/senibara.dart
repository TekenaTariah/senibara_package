// Data
export 'src/data/app_data.dart';
export 'src/data/theme_data.dart';
export 'src/data/enums.dart';

// Widgets
export 'src/widgets/app_bar.dart';
export 'src/widgets/logos.dart';
export 'src/widgets/drawer.dart';
export 'src/widgets/footer_controls.dart';
export 'src/widgets/about_us.dart';
export 'src/widgets/license_page.dart';
export 'src/widgets/coloured_Text.dart';

//Utilities
export 'src/utils/app_utils.dart';
export 'src/utils/payment_utils.dart';

// Classes
export 'src/classes/mass.dart';

// Imports
import 'package:package_info_plus/package_info_plus.dart';

String sbAppLogoPath = 'assets/logos/logo.png';
PackageInfo sbPackageInfo =
    PackageInfo(appName: "", packageName: "", version: "", buildNumber: "");

class Senibara {
  Senibara._();

  ///This method syncs the Senibara package with your app.
  ///It fetches your app Logo and app Name.
  ///```dart
  ///Senibara.initializeApp(logoPath:'assets/logo.png');
  ///```
  static Future<void> initializeApp({String? logoPath}) async {
    sbPackageInfo = await PackageInfo.fromPlatform();
    sbAppLogoPath = logoPath ?? 'assets/logos/logo.png';
  }
}

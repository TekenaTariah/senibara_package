![Logo](https://firebasestorage.googleapis.com/v0/b/senibara-5bb45.appspot.com/o/Logos%2Flogo-ht.png?alt=media&token=94d271ef-77bd-409f-81bd-354e27034878)

[![pub package](https://img.shields.io/pub/v/senibara.svg)](https://pub.dev/packages/senibara)

A company-specific package for **Senibara**. 

This package is meant to provide our developers with our **DWUs**.

Usage of this package outside of our permission is **prohibited** and will be at user's risk.

## What's new
#### Version: `0.0.3`
- **Data:** *NAME*
- **Widgets:** *SBWelcomeScreen*
- **Utilities:** *toCamelCase*

## Getting started
- Install the latest version of [Flutter](https://docs.flutter.dev/get-started/install).
- Install your preferred code editor. Try [VS Code](https://code.visualstudio.com/download).
- Create your flutter project.
 ```dart
  flutter create --org <com.domain> <appName>
  ```
- Add the latest version of the 'senibara' package to your pubspec.yaml file.
```dart
dependencies:
  flutter:
    sdk: flutter
    
  senibara: ^latest_version
  ```
- Import the package where needed.
```dart
import 'package:senibara/senibara.dart';
```

## Example:
The code below demonstrates a simple use case for our package.<br>
Note the **SB** prefix. This is meant to reinforce our brand and simplify the use of our interface.

```dart
//import the package
import 'package:senibara/senibara.dart';

...

@override
 Widget build(BuildContext context) {
    // Fetch Data
    var name = SBData.NAME;
    
    // Use Utils
    var companyName= SBUtils.toCamelCase(name);

    // Use Widget
    return SBWelcomeScreen(companyName);
  }
}
```

## Project Structure (DWU)
 Our package is structured as: **Data--Widgets--Utilities**
- (D) **Data:** *Static Constants in a class with private constructors.*
 ```dart
 class SBData {
   static const NAME = 'Senibara';
 }
 ```
- (W) **Widgets:** *Stateful or Stateless widget classes.*
 ```dart
 class SBWelcomeScreen extends StatefulWidget{}
 ```
- (U) **Utilities:** *Static Methods in a class with private constructors.*
 ```dart
 class SBUtils {
  static String toCamelCase(text)=>return _toCamelCase(text);
 }
```
## Platform Support

|                         | Android | iOS | web | Windows | macOS |
| ------------------------------ | :-----: | :-: | :---: | :-: | :-----: |
| Senibara                  | ✅      | ✅  | ✅    | ✅  | ✅      |  


## About Senibara

Senibara is a software development and IT solutions company.
<br>We specialize in creating software solutions using Machine Learning and our coding prowess.<br>
We build for clients but only on special requests.

For more information, or if you would like to be a part of our work, you can reach our developers on:

mailto:dev.senibara@gmail.com

tel:+2347034446241

[senibara.com]

We are constantly looking out for creative minds. 
<br>
<br>
###### THANKS,
**SENIBARA**




[sbLogo]: https://firebasestorage.googleapis.com/v0/b/senibara-5bb45.appspot.com/o/Logos%2Flogo-ht.png?alt=media&token=94d271ef-77bd-409f-81bd-354e27034878
[senibara.com]: https://senibara.com
[Install]: https://docs.flutter.dev/get-started/install

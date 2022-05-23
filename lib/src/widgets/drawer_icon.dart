import 'package:flutter/material.dart';

import '../../senibara.dart' show sbDesignOrange, sbDesignRed, sbDesignBlue;

class SBDrawerIcon extends StatelessWidget {
  const SBDrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Scaffold.of(context).openDrawer(),
      child: Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.only(left: 5),
          // color: Colors.grey,
          width: 24,
          height: 24,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: sbDesignOrange,
                height: 2,
              ),
              const SizedBox(height: 4),
              Container(
                color: sbDesignRed,
                height: 2,
              ),
              const SizedBox(height: 4),
              Container(
                color: sbDesignBlue,
                height: 2,
              ),
            ],
          )),
    );
  }
}

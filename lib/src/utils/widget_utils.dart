import 'package:flutter/material.dart';

class SBWidgetUtils {
  SBWidgetUtils._();

  static List<Widget> gappedChildren(double gap, List<Widget> children,
      {bool visibleDivider = false}) {
    List<Widget> gappedChildren = [];
    for (var i = 0; i < children.length; i++) {
      gappedChildren.add(children[i]);
      gappedChildren.add(SizedBox(height: gap / 2));
      if (visibleDivider) gappedChildren.add(const Divider());
      gappedChildren.add(SizedBox(height: gap / 2));
    }
    return gappedChildren;
  }
}

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget androidBody;
  final Widget webBody;

  const ResponsiveLayout(
      {super.key, required this.androidBody, required this.webBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainst) {
      if (constrainst.maxWidth < 430) {
        return androidBody;
      } else {
        return webBody;
      }
    });
  }
}

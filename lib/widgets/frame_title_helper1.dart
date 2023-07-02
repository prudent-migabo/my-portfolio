import 'package:flutter/material.dart';

import '../theme/responsive_screen_provider.dart';

class FrameTitleHelper1 extends StatelessWidget {
   FrameTitleHelper1({Key? key, required this.title, required this.description, this.responsivePadding}) : super(key: key);

  final String title;
  final String description;
  final EdgeInsets? responsivePadding;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SelectableText(
            title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Padding(
            padding: ResponsiveScreenProvider.isDesktopScreen(context)
                ? responsivePadding ?? const EdgeInsets.only(
                left: 50.0, right: 50.0, top: 30.0, bottom: 40.0)
                : EdgeInsets.zero,
            child: SelectableText(
              description,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}

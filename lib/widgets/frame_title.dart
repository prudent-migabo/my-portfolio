import 'package:portfolio_clean/theme/responsive_screen_provider.dart';
import 'package:flutter/material.dart';

import '../statics/constants.dart';

class FrameTitle extends StatelessWidget {
  const FrameTitle({Key? key, required this.title, this.description, this.hasDescription})
      : super(key: key);

  final String title;
  final String? description;
  final bool? hasDescription;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SelectableText(
            title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          hasDescription! ? const SizedBox(height: 20,) : const SizedBox(height: 10,),
          SelectableText(
            description ?? '',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

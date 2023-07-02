import 'package:flutter/material.dart';

import '../statics/key_holders.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/button_text.dart';
import '../widgets/text_pairs.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';
import 'ms_4_skills.dart';

class MS2AboutMe extends StatelessWidget {
  const MS2AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.aboutKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            FrameTitle(
                title: DataValues.aboutMeTitle,
                description: DataValues.aboutMeDescription),
            SizedBox(height: 50.0),
            Ms4Skills(),
          ],
        ),
      ),
    );
  }
}

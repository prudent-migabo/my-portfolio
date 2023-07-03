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
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.aboutMeTitle,
                hasDescription: false,
                description: DataValues.aboutMeDescription),
            const SizedBox(height: 20,),
            ButtonTextSmall(
              text: 'Get my resume',
              message: DataValues.myResumeLink.toString(),
              url: DataValues.myResumeLink,
              textStyle: TextStyle(
                fontSize: AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                fontWeight: AppThemeData.darkTheme.textTheme.headlineSmall!.fontWeight,
                color: AppThemeData.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

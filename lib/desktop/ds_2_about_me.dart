import 'package:portfolio_clean/desktop/ds_4_skills.dart';
import 'package:flutter/material.dart';

import '../statics/constants.dart';
import '../statics/key_holders.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../theme/responsive_screen_provider.dart';
import '../widgets/frame_title_helper1.dart';
import '../widgets/button_text.dart';
import '../widgets/text_pairs.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';

class DS2AboutMe extends StatelessWidget {
  const DS2AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.aboutKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: responsivePaddingFixedValue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.aboutMeTitle,
              description: DataValues.aboutMeDescription,
              hasDescription: true,

            ),
            const SizedBox(height: 20,),
            ButtonTextSmall(
              text: 'Get my resume',
              message: '',
              url: DataValues.mesPiecesBusinessUrl,
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

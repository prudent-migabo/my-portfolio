import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_clean/statics/constants.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/button_text.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';
import '../widgets/social_profiles.dart';

class DS5Contact extends StatelessWidget {
  const DS5Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.contactKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: responsivePaddingFixedValue.copyWith(right: MediaQuery.of(context).size.height/1.9, left: MediaQuery.of(context).size.height/1.9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FrameTitle(
                title: DataValues.contactTitle,
                description: DataValues.contactDescription,
              hasDescription: true,
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(DataValues.contactBanner,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleMedium!.fontSize,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.titleLarge!.fontWeight,
                      color: AppThemeData.textWhite,
                    )),
                const SizedBox(width: 5,),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                        const ClipboardData(text: DataValues.contactEmail),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'Email successfully copied to clipboard',
                          textAlign: TextAlign.center,
                          style: AppThemeData.darkTheme.textTheme.bodyLarge,
                        ),
                        duration: const Duration(seconds: 2),
                      ));
                    },
                    child: Tooltip(
                      message: 'Click to copy email to clipboard',
                      child: Text(
                        DataValues.contactEmail,
                        style: TextStyle(
                          fontSize: AppThemeData
                              .darkTheme.textTheme.titleMedium!.fontSize,
                          fontWeight: AppThemeData
                              .darkTheme.textTheme.titleLarge!.fontWeight,
                          color: AppThemeData.textPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25,),
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
            const SizedBox(
              height: 40.0,
            ),
            const SocialProfiles(),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

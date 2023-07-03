import 'package:flutter/material.dart';
import 'package:portfolio_clean/theme/responsive_screen_provider.dart';

import '../theme/app_theme.dart';
import 'button_text.dart';

class ProjectsContainer extends StatelessWidget {
    ProjectsContainer({
    super.key, required this.projectName, required this.img1, required this.img2, required this.img3, this.img4, this.img5, this.imgHeight, required this.experienceDescription, required this.isDeployed, this.playStoreUrl, required this.technologies, this.previewUrl,
  });

  final String projectName;
  final String technologies;
  final String img1;
  final String img2;
  final String img3;
  final String? img4;
  final String? img5;
  final double? imgHeight;
  final String experienceDescription;
  final bool isDeployed;
  final Uri? playStoreUrl;
  final Uri? previewUrl;


  double dsImageHeight = 380;
  double msImageHeight = 230;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: ResponsiveScreenProvider.isDesktopScreen(context)? const EdgeInsets.all(30.0) : const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          physics: ResponsiveScreenProvider.isDesktopScreen(context)? const NeverScrollableScrollPhysics() : null,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(projectName,
                  style: TextStyle(
                    fontSize:
                    AppThemeData
                        .darkTheme.textTheme.titleLarge!.fontSize,
                    fontWeight: AppThemeData.darkTheme.textTheme
                        .headlineSmall!.fontWeight,
                    color: AppThemeData.textPrimary,
                  ),
                ),
                ResponsiveScreenProvider.isDesktopScreen(context)? const SizedBox(height: 15) : const SizedBox(height: 10,) ,
                SelectableText(
                  technologies,
                  style: AppThemeData.darkTheme.textTheme.titleSmall,
                  //style: Theme.of(context).textTheme.titleSmall,
                ),
                ResponsiveScreenProvider.isDesktopScreen(context)? const SizedBox(height: 20) : const SizedBox(height: 10,) ,
                ResponsiveScreenProvider.isDesktopScreen(context)? Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 15,
                  children: [
                    Image.asset(img1, height: dsImageHeight),
                    Image.asset(img2, height: dsImageHeight),
                    Image.asset(img3, height: dsImageHeight),
                    Image.asset(img4!, height: dsImageHeight),
                    Image.asset(img5!, height: dsImageHeight),
                  ],
                ) : Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Image.asset(img1, height: msImageHeight),
                    Image.asset(img2, height: msImageHeight),
                    Image.asset(img3, height: msImageHeight),
                    Image.asset(img4!, height: msImageHeight),
                    Image.asset(img5!, height: msImageHeight),
                  ],
                ),
                const SizedBox(height: 15,),
                SelectableText(experienceDescription,
                  style : ResponsiveScreenProvider.isDesktopScreen(context)? AppThemeData.darkTheme.textTheme.titleSmall : AppThemeData.darkTheme.textTheme.labelLarge,
                ),
                const SizedBox(height: 15),
                isDeployed?  Row(
                  children: [
                    ButtonTextSmall(
                      text: 'See live',
                      message: 'Go to $playStoreUrl}',
                      url: playStoreUrl!,
                      textStyle: TextStyle(
                        fontSize: AppThemeData.darkTheme.textTheme.titleSmall!.fontSize,
                        fontWeight: AppThemeData.darkTheme.textTheme.titleLarge!.fontWeight,
                        color: AppThemeData.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 40,),
                    ButtonTextSmall(
                      text: 'Preview',
                      message: 'Go to $previewUrl}',
                      url: previewUrl!,
                      textStyle: TextStyle(
                        fontSize: AppThemeData.darkTheme.textTheme.titleSmall!.fontSize,
                        fontWeight: AppThemeData.darkTheme.textTheme.titleLarge!.fontWeight,
                        color: AppThemeData.primaryColor,
                      ),
                    ),
                  ],
                ) : ButtonTextSmall(
                  text: 'Preview',
                  message: 'Go to $previewUrl}',
                  url: previewUrl!,
                  textStyle: TextStyle(
                    fontSize: AppThemeData.darkTheme.textTheme.titleSmall!.fontSize,
                    fontWeight: AppThemeData.darkTheme.textTheme.titleLarge!.fontWeight,
                    color: AppThemeData.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:portfolio_clean/theme/responsive_screen_provider.dart';

import '../theme/app_theme.dart';
import 'button_text.dart';

class ProjectsContainer extends StatelessWidget {
  const ProjectsContainer({
    super.key, required this.projectName, required this.img1, required this.img2, required this.img3, this.img4, this.img5, this.imgHeight, required this.experienceDescription, required this.isDeployed, this.url, required this.technologies,
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
  final Uri? url;

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
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          shrinkWrap: true,
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
                const SizedBox(height: 15,),
                SelectableText(
                  technologies,
                  style: AppThemeData.darkTheme.textTheme.titleSmall,
                  //style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 20.0),
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: ResponsiveScreenProvider.isDesktopScreen(context) ? 15 : 0,
                  children: [
                    Image.asset(img1, height: imgHeight ?? 380,),
                    Image.asset(img2, height: imgHeight ?? 380,),
                    Image.asset(img3, height: imgHeight ?? 380,),
                    Image.asset(img4!, height: imgHeight ?? 380,),
                    Image.asset(img5!, height: imgHeight ?? 380,),
                  ],
                ),
                const SizedBox(height: 15,),
                SelectableText(experienceDescription,
                  style : AppThemeData.darkTheme.textTheme.titleSmall,
                ),
                isDeployed? const SizedBox(height: 15,) : const SizedBox(height: 0,),
                isDeployed?  ButtonTextSmall(
                  text: 'See live',
                  message: 'Go to $url}',
                  url: url!,
                  textStyle: TextStyle(
                    fontSize: AppThemeData.darkTheme.textTheme.titleSmall!.fontSize,
                    fontWeight: AppThemeData.darkTheme.textTheme.titleLarge!.fontWeight,
                    color: AppThemeData.primaryColor,
                  ),
                ) : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../statics/constants.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../theme/responsive_screen_provider.dart';
import '../widgets/frame_title_helper1.dart';
import '../widgets/frame_title.dart';

class Ds4Skills extends StatelessWidget {
  const Ds4Skills({Key? key}) : super(key: key);

  Widget type1(String text){
    return Text(text,
      style: TextStyle(
          fontSize: AppThemeData.darkTheme.textTheme.titleSmall!.fontSize,
          fontWeight:
          AppThemeData.darkTheme.textTheme.titleSmall!.fontWeight,
          color: AppThemeData.textGreyDark),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.skillsKey,
      color: AppThemeData.backgroundGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FrameTitle(
            title: DataValues.skillsTitle,
            hasDescription: true,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: SkillsCard(title: DataValues.skillsTitle1,
                          skills: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              type1('- Dart', ),
                              type1('- Java'),
                              type1('- Kotlin'),
                              type1('- JavaScript'),
                            ],
                          ),
                        ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child:  SkillsCard(
                        title: DataValues.skillsTitle2,
                        skills: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            type1('- Flutter'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: SkillsCard(title: DataValues.skillsTitle3,
                        skills: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            type1('- Git'),
                            type1('- Github'),
                            type1('- Postman'),
                            type1('- Vs Code'),
                            type1('- Android studio'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child:  SkillsCard(
                        title: DataValues.skillsTitle4,
                        skills: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            type1('- Teamwork'),
                            type1('- Communication'),
                            type1('- Problem solving'),
                            type1('- Creativity'),
                            type1('- Time management'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
           //  child: GridView.count(
           //    shrinkWrap: true,
           //    crossAxisSpacing: 15,
           //    mainAxisSpacing: 15,
           //    crossAxisCount: 2,
           //   //childAspectRatio: 16/5,
           //    children: <Widget>[
           //      SkillsCard(title: DataValues.skillsTitle1,
           //          skills: Column(
           //            crossAxisAlignment: CrossAxisAlignment.start,
           //            children: [
           //              type1('- Dart', ),
           //              type1('- Java'),
           //              type1('- Kotlin'),
           //              type1('- JavaScript'),
           //            ],
           //          ),
           //      ),
           //      SkillsCard(
           //        title: DataValues.skillsTitle2,
           //        skills: Column(
           //          crossAxisAlignment: CrossAxisAlignment.start,
           //          children: [
           //            type1('- Flutter'),
           //          ],
           //        ),
           //      ),
           //      SkillsCard(
           //        title: DataValues.skillsTitle3,
           //        skills: Column(
           //          crossAxisAlignment: CrossAxisAlignment.start,
           //          children: [
           //            type1('- Git'),
           //            type1('- Github'),
           //            type1('- Postman'),
           //            type1('- Vs Code'),
           //            type1('- Android studio'),
           //          ],
           //        ),
           //      ),
           //      SkillsCard(
           //        title: DataValues.skillsTitle4,
           //        skills: Column(
           //          crossAxisAlignment: CrossAxisAlignment.start,
           //          children: [
           //            type1('- Teamwork'),
           //            type1('- Communication'),
           //            type1('- Problem solving'),
           //            type1('- Creativity'),
           //            type1('- Time management'),
           //          ],
           //        ),
           //      ),
           //    ],
           //  ),
          ),
        ],
      ),
    );
  }
}


class SkillsCard extends StatelessWidget {
   SkillsCard({
    super.key,
     required this.title,
     required this.skills,

  });
   String title;
   Widget skills;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              fontSize:
              AppThemeData.darkTheme.textTheme.titleLarge!.fontSize,
              fontWeight: AppThemeData
                  .darkTheme.textTheme.headlineSmall!.fontWeight,
              color: AppThemeData.textWhite,
            ),
          ),
          const SizedBox(height: 15,),
          skills,
        ],
      ),
    );
  }
}

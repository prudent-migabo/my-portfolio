import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/frame_title_helper1.dart';

class Ms4Skills extends StatelessWidget {
  const Ms4Skills({Key? key}) : super(key: key);

  Widget type1(String text){
    return Text(text,
      style: TextStyle(
          fontSize: AppThemeData.darkTheme.textTheme.bodyLarge!.fontSize,
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
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FrameTitleHelper1(
            title: DataValues.skillsTitle,
            description: '',
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Expanded(
          //       child: SkillsCard(title: DataValues.skillsTitle1,
          //         skills: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             type1('- Dart', ),
          //             type1('- Java'),
          //             type1('- Kotlin'),
          //             type1('- JavaScript'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     const SizedBox(width: 10,),
          //     Expanded(
          //       child: SkillsCard(
          //         title: DataValues.skillsTitle2,
          //         skills: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             type1('- Flutter'),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),

          GridView.count(
            shrinkWrap: true,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            childAspectRatio: 16/20,
            children: <Widget>[
              SkillsCard(title: DataValues.skillsTitle1,
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
              SkillsCard(
                title: DataValues.skillsTitle2,
                skills: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    type1('- Flutter'),
                  ],
                ),
              ),
              SkillsCard(
                title: DataValues.skillsTitle3,
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
              SkillsCard(
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
            ],
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
      padding: const EdgeInsets.only(top: 20, left: 20, right: 5, bottom: 20),
      //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
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
          const SizedBox(height: 10,),
          skills,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio_clean/widgets/frame_title_helper1.dart';

import '../statics/assets.dart';
import '../statics/constants.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';
import '../widgets/projects_container.dart';

class MS3Projects extends StatelessWidget {
  const MS3Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.projectsKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.experienceTitle,
              hasDescription: false,
            ),
            const SizedBox(height: 40.0),
            ProjectsContainer(
              projectName: DataValues.experienceOrg1Title,
              technologies: DataValues.experience1Description,
              experienceDescription: DataValues.experienceOrg1Description,
              url: DataValues.mesPiecesClientURL,
              isDeployed: true,
              img1: Assets.exp1Img1,
              img2: Assets.exp1Img2,
              img3: Assets.exp1Img3,
              img4: Assets.exp1Img4,
              img5: Assets.exp1Img5,
              imgHeight: 380,
            ),
            const SizedBox(height: 20,),
            ProjectsContainer(
              projectName: DataValues.experienceOrg2Title,
              technologies: DataValues.experience2Description,
              experienceDescription: DataValues.experienceOrg2Description,
              url: DataValues.mesPiecesBusinessUrl,
              isDeployed: true,
              img1: Assets.exp2Img1,
              img2: Assets.exp2Img2,
              img3: Assets.exp2Img3,
              img4: Assets.exp2Img4,
              img5: Assets.exp2Img5,
              imgHeight: 350,
            ),
            const SizedBox(height: 20,),
            const ProjectsContainer(
              projectName: DataValues.experienceOrg4Title,
              technologies: DataValues.experience4Description,
              experienceDescription: DataValues.experienceOrg4Description,
              url: null,
              isDeployed: false,
              img1: Assets.exp4Img1,
              img2: Assets.exp4Img2,
              img3: Assets.exp4Img3,
              img4: Assets.exp4Img4,
              img5: Assets.exp4Img5,
              imgHeight: 350,
            ),
            const SizedBox(height: 20,),
            const ProjectsContainer(
              projectName: DataValues.experienceOrg3Title,
              technologies: DataValues.experience3Description,
              experienceDescription: DataValues.experienceOrg3Description,
              url: null,
              isDeployed: false,
              img1: Assets.exp3Img1,
              img2: Assets.exp3Img2,
              img3: Assets.exp3Img3,
              img4: Assets.exp3Img4,
              img5: Assets.exp3Img5,
              imgHeight: 350,
            ),
          ],
        ),
      ),
    );
  }
}

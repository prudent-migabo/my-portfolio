import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
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

class MS3Projects extends StatefulWidget {
   MS3Projects({Key? key, this.canCarouselScroll}) : super(key: key);

    bool? canCarouselScroll = false;

  @override
  State<MS3Projects> createState() => _MS3ProjectsState();
}

class _MS3ProjectsState extends State<MS3Projects> {
  CarouselController controller = CarouselController();
  int currentIndex = 0;

  final List<Widget> items = [
    ProjectsContainer(
      projectName: DataValues.experienceOrg1Title,
      technologies: DataValues.experience1Description,
      experienceDescription: DataValues.experienceOrg1Description,
      playStoreUrl: DataValues.mesPiecesClientURL,
      previewUrl: DataValues.mesPiecesClientPreviewUrl,
      isDeployed: true,
      img1: Assets.exp1Img1,
      img2: Assets.exp1Img2,
      img3: Assets.exp1Img3,
      img4: Assets.exp1Img4,
      img5: Assets.exp1Img5,
    ),
    ProjectsContainer(
      projectName: DataValues.experienceOrg2Title,
      technologies: DataValues.experience2Description,
      experienceDescription: DataValues.experienceOrg2Description,
      playStoreUrl: DataValues.mesPiecesBusinessPreviewUrl,
      previewUrl: DataValues.xCookerPreviewUrl,
      isDeployed: true,
      img1: Assets.exp2Img1,
      img2: Assets.exp2Img2,
      img3: Assets.exp2Img3,
      img4: Assets.exp2Img4,
      img5: Assets.exp2Img5,
    ),
    ProjectsContainer(
      projectName: DataValues.experienceOrg3Title,
      technologies: DataValues.experience3Description,
      experienceDescription: DataValues.experienceOrg3Description,
      playStoreUrl: null,
      previewUrl: DataValues.xCookerPreviewUrl,
      isDeployed: false,
      img1: Assets.exp3Img1,
      img2: Assets.exp3Img2,
      img3: Assets.exp3Img3,
      img4: Assets.exp3Img4,
      img5: Assets.exp3Img5,
    ),
    ProjectsContainer(
      projectName: DataValues.experienceOrg4Title,
      technologies: DataValues.experience4Description,
      experienceDescription: DataValues.experienceOrg4Description,
      playStoreUrl: null,
      previewUrl: DataValues.xCookerPreviewUrl,
      isDeployed: false,
      img1: Assets.exp4Img1,
      img2: Assets.exp4Img2,
      img3: Assets.exp4Img3,
      img4: Assets.exp4Img4,
      img5: Assets.exp4Img5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      key: KeyHolders.projectsKey,
      color: AppThemeData.backgroundGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FrameTitle(
            title: DataValues.experienceTitle,
            hasDescription: false,
          ),
          CarouselSlider(
            carouselController: controller,
            items: items,
            options: CarouselOptions(
              height: 1050,
              aspectRatio: 1,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: widget.canCarouselScroll! ? true : false,
              autoPlayInterval: const Duration(seconds: 7),
              autoPlayAnimationDuration: const Duration(seconds: 3),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, _){
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 15,),
          Center(
            child: DotsIndicator(
              dotsCount: items.length,
              position: currentIndex,
              decorator: const DotsDecorator(
                  color: AppThemeData.textCursor,
                  activeColor: AppThemeData.primaryColor,
                  sizes: [
                    Size.square(10.0),
                    Size.square(10.0),
                    Size.square(10.0),
                    Size.square(10.0),
                  ],
                  activeSizes: [
                    Size.square(15.0),
                    Size.square(15.0),
                    Size.square(15.0),
                    Size.square(15.0),
                  ],
                  spacing: EdgeInsets.all(10.0)
              ),
            ),
          ),
        ],
      ),
    );
  }
}

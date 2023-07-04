import 'package:portfolio_clean/desktop/ds_4_skills.dart';
import 'package:flutter/material.dart';

import 'mobile/ms_4_skills.dart';
import 'statics/constants.dart';
import 'theme/responsive_screen_provider.dart';
import 'theme/app_theme.dart';
import 'widgets/nav_bar.dart';
import 'desktop/ds_1_header.dart';
import 'desktop/ds_2_about_me.dart';
import 'desktop/ds_3_projects.dart';
import 'desktop/ds_5_contact.dart';
import 'mobile/ms_1_header.dart';
import 'mobile/ms_2_about_me.dart';
import 'mobile/ms_3_projects.dart';
import 'mobile/ms_5_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prudent MIGABO',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.darkTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showBackToTopButton = false;
  bool _canCarouselScroll = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(
            () {
              if (_scrollController.offset >= 300) {
                _showBackToTopButton = true;
              } else {
                _showBackToTopButton = false;
              }
              if (ResponsiveScreenProvider.isDesktopScreen(context) ? _scrollController.offset >= 500 : _scrollController.offset >= 400){
                _canCarouselScroll = true;
              } else{
                _canCarouselScroll = false;
              }
            },
          );
        },
      );

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInCubic);
  }

  @override
  Widget build(BuildContext context) {
    Widget desktopUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          const DS1Header(),
          dsSectionSpacer,
          const DS2AboutMe(),
          dsSectionSpacer,
          DS3Projects(canCarouselScroll: _canCarouselScroll,),
          dsSectionSpacer,
          const Ds4Skills(),
          dsSectionSpacer,
          const DS5Contact(),
        ],
      );
    }

    Widget mobileUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          const MS1Header(),
          msSectionSpacer,
          const MS2AboutMe(),
          msSectionSpacer,
          MS3Projects(canCarouselScroll: _canCarouselScroll),
          msSectionSpacer,
          const Ms4Skills(),
          msSectionSpacer,
          const MS5Contact(),
        ],
      );
    }

    return Scaffold(
      appBar: ResponsiveScreenProvider.isDesktopScreen(context)
          ? null
          : AppBar(elevation: 0.0),
      drawer: ResponsiveScreenProvider.isDesktopScreen(context)
          ? null
          : NavBar().mobileNavBar(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppThemeData.backgroundGrey,
          child: ResponsiveScreenProvider.isDesktopScreen(context)
              ? desktopUI()
              : mobileUI(),
        ),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              tooltip: 'Go to top',
              backgroundColor: AppThemeData.buttonPrimary,
              foregroundColor: AppThemeData.iconSecondary,
              child: const Icon(
                Icons.arrow_upward_rounded,
              ),
            ),
    );
  }
}

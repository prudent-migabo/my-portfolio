import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/nav_bar.dart';
import '../widgets/social_profiles.dart';

class DS1Header extends StatefulWidget {
  const DS1Header({Key? key}) : super(key: key);

  @override
  State<DS1Header> createState() => _DS1HeaderState();
}

class _DS1HeaderState extends State<DS1Header> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  );

  @override
  void initState() {
    repeatOnce();
    super.initState();
  }

  void repeatOnce() async {
    await _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-5, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  ));


  List<Widget> headerData() {
    return [
      Column(
        children: [
          SelectableText(
            DataValues.headerGreetings,
            style: AppThemeData.darkTheme.textTheme.headlineSmall,
          ),
          SlideTransition(
            position: _offsetAnimation,
            child: SelectableText(
              DataValues.headerName,
              style: AppThemeData.darkTheme.textTheme.displayMedium,
            ),
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.titleLarge,
          ),
          const SizedBox(height: 20.0),
          const SocialProfiles(),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
      child: Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: headerData(),
              ),
              const SizedBox(height: 80.0),
              NavBar().desktopNavBar(),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/social_profiles.dart';

class MS1Header extends StatefulWidget {
  const MS1Header({Key? key}) : super(key: key);

  @override
  State<MS1Header> createState() => _MS1HeaderState();
}

class _MS1HeaderState extends State<MS1Header> with TickerProviderStateMixin {

  late final AnimationController _controller1 = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  );
  late final AnimationController _controller2 = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  );

  @override
  void initState() {
    repeatTitleOnce();
    repeatDescriptionOnce();
    super.initState();
  }

  void repeatTitleOnce() async {
    await _controller1.forward();
  }

  void repeatDescriptionOnce() async {
    await _controller2.forward();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-5, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller1,
    curve: Curves.fastOutSlowIn,
  ));

  late final Animation<Offset> _offsetDescriptionAnimation = Tween<Offset>(
    begin: const Offset(0.0, -2),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller2,
    curve: Curves.fastOutSlowIn,
  ),);

  List<Widget> headerData() {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
             // textAlign: TextAlign.center,
            ),
          ),
          SlideTransition(
            position: _offsetDescriptionAnimation,
            child: SelectableText(
              DataValues.headerTitle,
              style: AppThemeData.darkTheme.textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 20.0),
          const SocialProfiles(),
          const SizedBox(height: 20.0),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
          child: Column(
            children: headerData(),
          )),
    );
  }
}

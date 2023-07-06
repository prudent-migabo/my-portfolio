import 'package:flutter/material.dart';

import '../statics/key_holders.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/button_text.dart';
import '../widgets/text_pairs.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';
import 'ms_4_skills.dart';

class MS2AboutMe extends StatefulWidget {
  const MS2AboutMe({Key? key}) : super(key: key);

  @override
  State<MS2AboutMe> createState() => _MS2AboutMeState();
}

class _MS2AboutMeState extends State<MS2AboutMe> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 5),
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
    begin: const Offset(5, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.aboutKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SelectableText(
                    DataValues.aboutMeTitle,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SlideTransition(
                    position: _offsetAnimation,
                    child: SelectableText(
                      DataValues.aboutMeDescription,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonTextSmall(
              text: 'Get my resume',
              message: DataValues.myResumeLink.toString(),
              url: DataValues.myResumeLink,
              textStyle: TextStyle(
                fontSize:
                    AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                fontWeight:
                    AppThemeData.darkTheme.textTheme.headlineSmall!.fontWeight,
                color: AppThemeData.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

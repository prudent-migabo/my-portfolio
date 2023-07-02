import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import 'button_rectangle.dart';
import 'button_text.dart';

class NavBar {
  Widget desktopNavBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTextLarge(
          text: DataValues.navBarAboutMe,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.aboutKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarAboutMe} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarProjects,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.projectsKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarProjects} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarSkills,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.skillsKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarSkills} section',
        ),
        const SizedBox(width: 20.0),
        ButtonRectangle(
            name: DataValues.navBarContactMe,
            onPressed: () => Scrollable.ensureVisible(
                  KeyHolders.contactKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                ),
            color: AppThemeData.buttonPrimary,
            message: 'Go to ${DataValues.navBarContactMe} section'),
      ],
    );
  }

  Widget mobileNavBar() {
    Widget miniHeader() {
      return Column(
        children: [
          SelectableText(
            DataValues.headerName,
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: AppThemeData.darkTheme.textTheme.titleLarge?.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.labelLarge,
          ),
        ],
      );
    }

    return Drawer(
      backgroundColor: AppThemeData.backgroundBlack,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 60.0),
          miniHeader(),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarAboutMe,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.aboutKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarAboutMe} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarProjects,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.projectsKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarProjects} section',
          ),
          const SizedBox(height: 20.0),
          ButtonRectangle(
              name: DataValues.navBarContactMe,
              onPressed: () => Scrollable.ensureVisible(
                    KeyHolders.contactKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                  ),
              color: AppThemeData.buttonPrimary,
              message: 'Go to ${DataValues.navBarContactMe} section'),
        ],
      ),
    );
  }
}

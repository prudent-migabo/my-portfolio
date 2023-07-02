import 'package:flutter/material.dart';

class KeyHolders {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  static final GlobalKey aboutKey = GlobalKey();
  static final GlobalKey projectsKey = GlobalKey();
  static final GlobalKey skillsKey = GlobalKey();
  static final GlobalKey contactKey = GlobalKey();
}

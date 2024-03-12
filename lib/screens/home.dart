import 'package:bank/components/box_card.dart';
import 'package:bank/components/color_dot.dart';
import 'package:bank/components/content_division.dart';
import 'package:bank/components/sections/header.dart';
import 'package:bank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

import '../components/sections/account_actions.dart';
import '../components/sections/points.dart';
import '../components/sections/recent_activity.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            RecentActivity(),
            AccountActions(),
            Points(),
          ],
        ),
      ),
    );
  }
}

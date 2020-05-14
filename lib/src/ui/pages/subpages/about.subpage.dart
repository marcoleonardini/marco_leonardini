import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marco_leonardini/src/constants/string.const.dart';

import 'package:marco_leonardini/src/ui/pages/widgets/fun_facts_icons.widget.dart';
import 'package:marco_leonardini/src/ui/pages/widgets/text_title.widget.dart';

import '../../../constants/color.const.dart';
import '../widgets/border_corner.painter.dart';

class AboutSubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(32.0),
          padding: EdgeInsets.all(12.0),
          color: AppColors.mainColor.withOpacity(0.975),
          constraints: BoxConstraints.expand(),
          child: CustomPaint(
            painter: BorderCornerPainter(),
          ),
        ),
        Container(
          margin: EdgeInsets.all(32.0),
          padding: EdgeInsets.all(24.0),
          constraints: BoxConstraints.expand(),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              HeadSection(),
              ServicesSection(),
              SizedBox(
                height: 24.0,
              ),
              FunFacts(),
            ],
          ),
        ),
      ],
    );
  }
}

class FunFacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextTitle(
          title: 'Fun Facts',
        ),
        SizedBox(
          height: 24.0,
        ),
        Container(
          height: 175.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FunFactsIcons(
                icon: FontAwesomeIcons.smile,
                title: 'Happy Clients',
                subtitle: '1,024',
                even: true,
              ),
              FunFactsIcons(
                icon: FontAwesomeIcons.clock,
                title: 'Working Hours',
                subtitle: '6,256',
              ),
              FunFactsIcons(
                icon: FontAwesomeIcons.award,
                title: 'Awards Won',
                subtitle: '3',
                even: true,
              ),
              FunFactsIcons(
                icon: FontAwesomeIcons.glassWhiskey,
                title: 'Coffe Consumed',
                subtitle: '20,00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HeadSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'About Me',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 48.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.network(
                'https://avatars0.githubusercontent.com/u/2449572?s=460&u=014de7adb1211fa234ae0ae47f58ff367d499758&v=4',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  kPersonalDesc,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextTitle(
          title: 'Services',
        ),
        SizedBox(
          height: 24.0,
        ),
        Container(
          height: 175.0,
          child: Row(
            children: <Widget>[
              Spacer(),
              FunFactsIcons(
                icon: Icons.phone_android,
                title: 'Mobile App',
                even: true,
                subtitle: 'Android / iOS',
              ),
              Spacer(),
              FunFactsIcons(
                icon: Icons.phone_android,
                title: 'Web Apps',
                even: true,
                subtitle: 'Web Apps',
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_andomie/widgets.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text:"About \nmy story",
          textStyle: Theme.of(context).textTheme.headlineMedium,
          fontWeight: FontWeight.bold,
          textColor: Colors.black,
        ),
        SizedBox(height: kDefaultPadding * 2),
        Image.asset("assets/images/sign.png")
      ],
    );
  }
}

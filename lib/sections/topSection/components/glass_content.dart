import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_andomie/widgets.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextView(
               text: "Hello There!",
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineSmall,
                textColor: Colors.white,
              ),
              Text(
                "Robbie \nRutherford",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              TextView(
                text: "Creative Design Director",
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineSmall,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

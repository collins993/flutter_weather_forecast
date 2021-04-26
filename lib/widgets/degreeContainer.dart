import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/palette.dart';


class DegreeContainer extends StatelessWidget {
  const DegreeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      height: 140,
      decoration: BoxDecoration(
        color: Palette.primaryColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "As of 4:28pm WAT",
            style: TextStyle(
              color: Palette.black.withOpacity(0.5),
              fontSize: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "33º",
                style: TextStyle(color: Palette.white, fontSize: 60),
              ),
              Icon(
                Icons.wb_sunny_outlined,
                size: 50,
                color: Palette.white,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Fair",
                style: TextStyle(color: Palette.white, fontSize: 15),
              ),
              Text(
                "--/25º",
                style: TextStyle(color: Palette.white, fontSize: 15),
              ),
            ],
          ),
          Text(
                "5% chance of rain through 5pm",
                style: TextStyle(color: Palette.white, fontSize: 17),
              ),
        ],
      ),
    );
  }
}

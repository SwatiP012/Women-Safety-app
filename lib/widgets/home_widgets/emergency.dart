import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safety_app/widgets/home_widgets/emergencies/AmbulanceEmergency.dart';
import 'package:safety_app/widgets/home_widgets/emergencies/DomesticViolence.dart';
import 'package:safety_app/widgets/home_widgets/emergencies/WomenHelpline.dart';
import 'package:safety_app/widgets/home_widgets/emergencies/policeemergency.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
          WomenHelpline(),
          DomesticViolence(),
        ],
      ),
    );
  }
}

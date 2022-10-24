import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class TeslaBottomNavigationBar extends StatelessWidget {
  const TeslaBottomNavigationBar({
    Key? key,
    this.selectedTab,
    this.onTap,
  }) : super(key: key);

  final int? selectedTab;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedTab!,
      items: List.generate(
          navIconSrc.length,
          (index) => BottomNavigationBarItem(
                icon: SvgPicture.asset(navIconSrc[index],
                    color:
                        index == selectedTab ? primaryColor : Colors.white54),
                label: "",
              )),
    );
  }
}

List<String> navIconSrc = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg"
];

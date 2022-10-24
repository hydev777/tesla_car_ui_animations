import 'package:animations_practice1/widgets/tmp_btn.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../controller/home_controller.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({
    Key? key,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempButton(
                  svgSrc: 'assets/icons/coolShape.svg',
                  title: 'Cool',
                  isActive: _controller.isCoolSelected,
                  press: _controller.updateCoolSelectedTab,
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                TempButton(
                  svgSrc: 'assets/icons/heatShape.svg',
                  title: 'Heat',
                  isActive: !_controller.isCoolSelected,
                  press: _controller.updateCoolSelectedTab,
                  activeColor: redColor,
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 48,
                ),
              ),
              Text(
                '49' + '\u2103',
                style: TextStyle(fontSize: 86),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 48,
                ),
              ),
            ],
          ),
          Spacer(),
          Text('CURRENT TEMPERATURE'),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Inside'.toUpperCase(),
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    '20' + '\u2103',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Inside'.toUpperCase(),
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text(
                    '35' + '\u2103',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.black54),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

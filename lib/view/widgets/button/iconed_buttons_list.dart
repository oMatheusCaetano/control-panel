import 'package:flutter/material.dart';

import 'package:control_panel/view/utils/colored.dart';

class CIconedButtonsListItem {
  final String? label;
  final IconData icon;
  void Function()? onPressed;

  CIconedButtonsListItem({
    required this.icon,
    this.label,
    this.onPressed,
  });
}

class CIconedButtonsList extends StatelessWidget {
  final List<CIconedButtonsListItem> items;

  const CIconedButtonsList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.only(bottom: 30),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: items.map((item) => Center(
          child: Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundColor: Colored.backgroundColor(context),
                      child: IconButton(
                        icon: Icon(
                          item.icon,
                          color: Colors.black,
                        ),
                        onPressed: item.onPressed ?? () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(item.label ?? ''),
                    ),
                  ],
                ),
                SizedBox(width: 20),
              ],
            ),
        ),
        ).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/bottom_bar_column.dart';

import 'button_column.dart';
import 'frosted_glass.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize= MediaQuery.of(context).size;
    return Drawer(
      child: Container( color: Colors.black,
        child: FrostedGlass( height: screenSize.height*0.9,width: screenSize.width*0.8,
          child: Column(children: [
            Expanded(
              child: Container( width: screenSize.width*0.8, height: 400,
                decoration: (BoxDecoration(borderRadius: BorderRadius.circular(8))),
                child: Image.asset(
                  'assets/images/profileme11jpg.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ButtonColumn(null),
          ],),
        ),
      ),
    );
  }
}

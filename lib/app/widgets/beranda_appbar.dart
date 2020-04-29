import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SobatAppBar extends AppBar {
  SobatAppBar()
      : super(
            elevation: 0.25,
            backgroundColor: Color(0xFFe2e9f7),
            flexibleSpace: _buildSobatAppBar());

  static Widget _buildSobatAppBar() {
    return new Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image.asset(
            'assets/images/logobadminton.png',
            height: 50.0,
            width: 50.0,
          ),
          new Container(
            child: new Icon(
              MdiIcons.bellAlert,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

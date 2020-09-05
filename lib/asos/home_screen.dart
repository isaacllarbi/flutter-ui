import 'package:flutter/material.dart';

class AsosHomeScreen extends StatefulWidget {
  @override
  _AsosHomeScreenState createState() => _AsosHomeScreenState();
}

class _AsosHomeScreenState extends State<AsosHomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: _openDrawer),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildHeader(),
                buildItem(icon: Icons.home, text: 'HOME'),
                buildItem(icon: Icons.shopping_bag_outlined, text: 'BAG'),
                buildItem(icon: Icons.favorite_border, text: 'SAVED ITEMS'),
                buildItem(
                    icon: Icons.person_add_alt_1_outlined, text: 'MY ACCOUNT'),
                buildItem(icon: Icons.settings, text: 'APP SETTINGS'),
                buildItem(icon: Icons.info_outline, text: 'HELP & FAQS'),
                buildDivider(),
                buildItem(
                  icon: Icons.wb_sunny_outlined,
                  text: 'DARK MODE',
                  trailing: Switch(
                      value: _darkModeEnabled, onChanged: _toggleDarkMode),
                ),
                buildDivider(),
                buildTitle(text: 'MORE ASOS'),
                buildSubtext(text: 'Gift Vouchers'),
                buildSubtext(text: 'Marketplace'),
                buildDivider(),
                buildTitle(text: 'TELL US WHAT YOU THINK'),
                buildSubtext(text: 'Help improve the app'),
                buildSubtext(text: 'Rate the app'),
                buildDivider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildHeader() {
    return Container(
      width: double.infinity,
      child: DrawerHeader(
        decoration: BoxDecoration(color: Colors.black54),
        child: Column(
          children: [
            //asos white logo
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'asos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 43,
                  letterSpacing: -5,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            //text explanation
            Text(
              'Save, shop and view orders',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            FlatButton(
              onPressed: _handleSignIn,
              child: Text(
                'Sign in >',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  final Function _handleSignIn = () {
    print('Sign in button clicked');
  };

  TextStyle _itemTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  _toggleDarkMode(bool) {
    //Implement toggle darkmode
    print('Toggle darkmode');
    setState(() {
      _darkModeEnabled = !_darkModeEnabled;
    });
  }

  buildItem({IconData icon, String text, Widget trailing}) => ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(text, style: _itemTextStyle),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Divider(),
        ),
        dense: false,
        trailing: trailing,
      );

  buildDivider() {
    return Container(height: 10, color: Colors.grey.withOpacity(0.3));
  }

  buildTitle({String text}) {
    return Text(text);
  }

  buildSubtext({String text}) {
    return Text(text);
  }
}

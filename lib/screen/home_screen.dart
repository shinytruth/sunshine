import 'package:flutter/material.dart';
import 'package:sunshine/common/theme.dart';

class HomesScreen extends StatefulWidget {
  const HomesScreen({Key? key}) : super(key: key);

  @override
  _HomesScreenState createState() => _HomesScreenState();
}

class _HomesScreenState extends State<HomesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("彼らの機器や装置はすべて生命体だ", style: CustomTextTheme.robotoBold32),
                TextButton(onPressed: () {}, child: Text("About")),
                TextButton(onPressed: () {}, child: Text("Plan")),
                TextButton(onPressed: () {}, child: Text("Contact")),
                Spacer(),
                TextButton(onPressed: () {}, child: Text("Login")),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            color: Colors.brown,
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}

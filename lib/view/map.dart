import 'package:flutter/material.dart';

import 'maps_screen.dart';

class mapScreen extends StatefulWidget {
  const mapScreen({Key? key}) : super(key: key);

  @override
  State<mapScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<mapScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    launchUrls();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

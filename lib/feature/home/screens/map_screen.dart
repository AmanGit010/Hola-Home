import 'package:flutter/material.dart';
import '../../widgets/appbar_widget.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'Map'),
      body: Column(
        children: [Text("Google maps comes here")],
      ),
    );
  }
}

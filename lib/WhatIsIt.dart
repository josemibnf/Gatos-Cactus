import 'dart:ffi';
import 'dart:async';
import 'camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class WhatIsItState extends State<WhatIsIt> {
  @override
  Widget build(BuildContext context) {
    loadModel();
    closeModel();
    return null;
  }

  Future<void> loadModel() async {
    String res = await Tflite.loadModel(
      model: "assets/model.tflite",
      labels: "assets/labels.txt",
      numThreads: 1 // defaults to 1
    );
  }

  Future<Void> closeModel() async {
    await Tflite.close();
  }
}

class WhatIsIt extends StatefulWidget{
  WhatIsItState get createState => WhatIsItState();
}

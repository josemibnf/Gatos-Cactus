import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class WhatIsItState extends State<WhatIsIt> {
  @override
  Widget build(BuildContext context) {
    load_model();
    image_classifier();
    close_model();
    return null;
  }

  Future<void> load_model() async {
    String res = await Tflite.loadModel(
      model: "assets/mobilenet_v1_1.0_224.tflite",
      labels: "assets/labels.txt",
      numThreads: 1 // defaults to 1
    );
  }

  Future<Void> image_classifier() async {
    
  }

  Future<Void> close_model() async {
    await Tflite.close();
  }
}

class WhatIsIt extends StatefulWidget{
  WhatIsItState get createState => WhatIsItState();
}

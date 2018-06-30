import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget {
  Camera(this.cameras);
   List<CameraDescription> cameras;

   CameraController controller;
  @override
  _CameraState createState() => new _CameraState();
}

class _CameraState extends State<Camera> {
    CameraController controller;

    @override
      void initState() {
        // TODO: implement initState
        super.initState();
        controller=new CameraController(widget.cameras[1], ResolutionPreset.medium);
        controller.initialize().then((_){
          if (!mounted){
            return;
          }
          setState(() {
                      
                    });
        });
      }
      
      @override
        void dispose() {
          controller?.dispose();
          // TODO: implement dispose
          super.dispose();
        }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.initialized) {
      return new AspectRatio(
        aspectRatio:
        controller.value.aspectRatio,
        child: new CameraPreview(controller));
    }
    return new AspectRatio(
        aspectRatio:
        controller.value.aspectRatio,
        child: new CameraPreview(controller));

  }
}
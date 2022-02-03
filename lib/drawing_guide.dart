import 'package:flutter/material.dart';

/*
this class contains the logic to draw a figure to the screen

TODO should it also contain the instructions on how the image should be transformed ?



*/
enum transforms {
  /*90 degrees*/
  rotationRight,
  rotationLeft,
  /*TODO add more transforms here*/
};



class DrawingGuide extends CustomPainter {
    late final double width;
    late final double height;


  Color lineColor = Colors.black;
  // how many lines comprise the figure
  int figureComplexity = 0;

  double screenHeight = 0.0;
  double screenWidth = 0.0;


 // getHeightWidth(context){


 //    setState(() {
 //     heightHolder = height.roundToDouble();
 //     widthHolder = width.roundToDouble() ;
 //    });

  }

// MediaQuery.of(context).size.width;
// MediaQuery.of(context).size.height;



  /*TODO what to paint*/
  @override
  void paint(Canvas canvas, Size size) {

    // TODO: implement paint
  }

  /*TODO optimizations for re-renders go here*/
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

  // type of Transformation user should perform

  /*Used to annotate the drawing with some labels*/
  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {
      // Annotate a rectangle containing the picture of the sun
      // with the label "Sun". When text to speech feature is enabled on the
      // device, a user will be able to locate the sun on this picture by
      // touch.
      Rect rect = Offset.zero & size;
      final double width = size.shortestSide * 0.4;
      rect = const Alignment(0.8, -0.9).inscribe(Size(width, width), rect);
      return <CustomPainterSemantics>[
        CustomPainterSemantics(
          rect: rect,
          properties: const SemanticsProperties(
            label: 'Sun',
            textDirection: TextDirection.ltr,
          ),
        ),
      ];
    };
  }
  @override
  bool shouldRebuildSemantics(Sky oldDelegate) => false;

}

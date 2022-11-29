
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimationWidget extends StatefulWidget {
  final double size;
  final Color color;

  const LoadingAnimationWidget({Key? key, required this.size,required this.color}) : super(key: key);


  @override
  _LoadingAnimationWidgetState createState() => _LoadingAnimationWidgetState();
}

class _LoadingAnimationWidgetState extends State<LoadingAnimationWidget> {

  normalLoading({required double size}){

    return SizedBox(
      width: size/1.7,
      height: size/1.7,
      child:Lottie.asset(
        "assets/gif/loader.json",
        fit: BoxFit.contain,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return normalLoading(size:widget.size );
  }
}
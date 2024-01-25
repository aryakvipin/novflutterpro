import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(MaterialApp(home: csliderr(),));
}
class csliderr  extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Image(image: AssetImage("assets/iconss/images.jpeg")),
        Image(image: AssetImage("assets/iconss/images.jpeg")),
        Image(image: AssetImage("assets/iconss/images.jpeg")),
        Image(image: AssetImage("assets/iconss/images.jpeg")),
        Image(image: AssetImage("assets/iconss/images.jpeg")),



      ],   options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
        
      ),
    );
  }


}
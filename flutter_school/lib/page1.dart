import 'package:b_7_1/main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(children: [_buildTop(), _buildMiddle(), _buildBottom()]);
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCar('택시'),
                _buildCar('블랙'),
                _buildCar('바이크'),
                _buildCar('대리'),
              ],
            ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCar('택시'),
              _buildCar('블랙'),
              _buildCar('바이크'),
              _buildCar('대리', visible: false),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCar(String title, {bool visible = true}) {
    return
        GestureDetector(
          onTap: () {
            print('클릭!');
          },
          child: Opacity(
              opacity: visible ? 1.0 : 0.0,
              child: Column(children: [Icon(Icons.local_taxi, size: 40), Text(title)]),
        )
    // return Opacity(
    //     opacity: visible ? 1.0 : 0.0,
    //   child: Column(children: [Icon(Icons.local_taxi, size: 40), Text(title)]),

    // return Column(children: [Icon(Icons.local_taxi, size: 40),
        //Text(title)
      //],
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: true
      ),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(url, fit: BoxFit.cover),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }

}
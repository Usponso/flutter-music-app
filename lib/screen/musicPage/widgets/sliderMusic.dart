import "package:flutter/material.dart";

class SliderMusic extends StatelessWidget {
  const SliderMusic(
      {super.key, required this.currentTime, required this.callback});

  final double currentTime;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Slider(
            activeColor: Colors.white,
            inactiveColor: Colors.grey[600],
            value: currentTime,
            max: 100,
            onChanged: (value) => callback(value),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                timerModal(currentTime),
                style: TextStyle(color: Colors.white),
              ),
              Text(
                timerModal(100),
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }

  String timerModal(double time){
    int minutes = 0;
    int seconds = 0;
    //1:40 = 100s
    seconds = (time % 60).floor();
    minutes = (time / 60).floor();
    return "$minutes:$seconds";
  }
}

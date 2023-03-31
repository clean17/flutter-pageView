import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return _firstBuild(screenHeight);
  }
}

Widget _firstBuild(double screenHeight) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: Icon(Icons.menu),
          title: Text("Around"),
          expandedHeight: screenHeight, // 슬리버 범위 지정

          flexibleSpace: PageView.builder( // 슬리버에 넣을 무언가가 들어갈 영역
            itemCount: 5,
            itemBuilder: (context, index) {
              return Image.network(
                "https://picsum.photos/id/${index + 1}/200/300",
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ],
    ),
  );
}


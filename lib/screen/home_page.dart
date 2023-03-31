import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            buildPageView(),
            buildPositioned(),
          ],
        ));
  }

  Positioned buildPositioned() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AppBar(
        title: Text('앱바'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }

  PageView buildPageView() {
    return PageView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Image.network(
          "https://picsum.photos/id/${index + 1}/200/300",
          fit: BoxFit.cover,
        );
      },
    );
  }
}

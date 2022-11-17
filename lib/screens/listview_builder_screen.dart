import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttercomponents/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imageId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      // print(
      // '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');

      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        fechData();
      }
    });
  }

  Future fechData() async {
    if (isLoading) return;
    setState(() {});
    isLoading = true;
    await Future.delayed(const Duration(seconds: 3));
    add5();
    isLoading = false;
    setState(() {});

    if ((scrollController.position.pixels + 100) <=
        scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(
      scrollController.position.pixels + 250,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  void add5() {
    final lastId = imageId.last;

    setState(() {
      imageId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    });
  }

  Future<void> onRefres() async {
    final last = imageId.last;
    imageId.clear();
    imageId.add(last + 1);
    add5();
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          RefreshIndicator(
            color: AppTheme.primaryLigth,
            onRefresh: onRefres,
            child: ListView.builder(
              // physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: imageId.length,
              itemBuilder: (context, index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage(
                    // 'https://picsum.photos/500/300?image=${index + 60}'
                    'https://picsum.photos/seed/${imageId[index]}/500/300',
                  ),
                );
              },
            ),
          ),
          if (isLoading)
            Positioned(
              bottom: 40,
              left: (size.width * 0.5) - 30,
              child: const _LoadingIcon(),
            ),
        ],
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(),
    );
  }
}

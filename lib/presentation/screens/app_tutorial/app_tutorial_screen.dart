import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: BouncingScrollPhysics(),
            children: slides.map((slideInfo) => _Slide(slideInfo)).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Skip'),
            ),
          ),

          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('Start'),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

final slides = <SlideInfo>[
  SlideInfo(
    'Search your food',
    'Incididunt deserunt est mollit excepteur Lorem esse incididunt quis aliqua id laborum et laborum in.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Fast delivery ',
    'Consectetur Lorem esse ut commodo voluptate eu.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Enjoy your food',
    'Excepteur magna id quis minim ad in voluptate.',
    'assets/images/3.png',
  ),
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

class _Slide extends StatelessWidget {
  final SlideInfo slideInfo;
  const _Slide(this.slideInfo);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          children: [
            Image(image: AssetImage(slideInfo.imageUrl)),
            const SizedBox(height: 20),
            Text(slideInfo.title, style: titleStyle),
            const SizedBox(height: 10),
            Text(slideInfo.caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}

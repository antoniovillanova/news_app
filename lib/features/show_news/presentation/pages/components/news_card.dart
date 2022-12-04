import 'package:flutter/material.dart';
import 'package:news_app/features/show_news/presentation/pages/components/news_view_page.dart';

import '../../../../core/constants/palette.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const NewsViewPage();
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 300,
        width: MediaQuery.of(context).size.width - (2 * 16),
        child: Stack(
          children: [
            Container(
              height: 260,
              color: Palette.lightGrey,
              child: Image.network(
                'https://img.freepik.com/premium-vector/apple-background-flat-illustration_598748-19.jpg?w=2000',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 0,
              child: Container(
                height: 80,
                decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 4,
                    color: Colors.black12,
                  )
                ]),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Text(
                      'News title',
                      maxLines: 2,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Palette.deepBlue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

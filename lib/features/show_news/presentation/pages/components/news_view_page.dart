import 'package:flutter/material.dart';

import '../../../../core/constants/palette.dart';
import '../../../domain/entities/news_info.dart';

class NewsViewPage extends StatelessWidget {
  final NewsInfo newsInfo;
  const NewsViewPage({Key? key, required this.newsInfo}) : super(key: key);

  String _getDateInDDMMYYFormat(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Palette.deepBlue,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsInfo.title ?? '-- No title --',
                style: const TextStyle(
                  color: Palette.deepBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 300,
                color: Palette.lightGrey,
                child: newsInfo.imageUrl != null ? Image.network(
                  newsInfo.imageUrl!,
                  fit: BoxFit.cover,
                ) : const SizedBox(),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                _getDateInDDMMYYFormat(newsInfo.dateTime),
                style: const TextStyle(color: Palette.lightGrey, fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                newsInfo.author ?? '-',
                style: const TextStyle(color: Palette.lightGrey, fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                newsInfo.content ?? '-',
                style: const TextStyle(color: Palette.deepBlue, fontSize: 14),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

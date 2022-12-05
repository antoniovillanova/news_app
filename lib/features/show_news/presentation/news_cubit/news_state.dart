import 'package:flutter/material.dart';

import '../../domain/entities/news_info.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {
  final List<NewsInfo> news;
  NewsInitial({required this.news});
}

class NewsLoading extends NewsState {}

class NewsError extends NewsState {}
part of 'chapters_bloc.dart';

@immutable
sealed class ChaptersEvent {}

class LoadChapterEvent extends ChaptersEvent {
  final String bookId;
  final String chapterId;
  LoadChapterEvent({
    required this.bookId,
    required this.chapterId,
  });
}

class RefreshChapterEvent extends ChaptersEvent {
  final String bookId;
  RefreshChapterEvent(this.bookId);
}

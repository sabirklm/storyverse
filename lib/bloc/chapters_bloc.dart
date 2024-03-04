import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chapters_event.dart';
part 'chapters_state.dart';

class ChaptersBloc extends Bloc<ChaptersEvent, ChaptersState> {
  ChaptersBloc() : super(ChaptersInitial()) {
    //LoadChapterEvent
    on<LoadChapterEvent>((event, emit) {
     
     
    });

    //ChaptersEvent
    on<ChaptersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:storyverse/services/story_service.dart';

import '../models/story.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    //GetStoriesEvent
    on<GetStoriesEvent>((event, emit) async {
      emit(HomeLoading());
      await Future.delayed(const Duration(seconds: 1));
      List<Story> stories = await StoryService().getStories();
      emit(HomeLoaded(stories: stories));
    });

    on<HomeEvent>((event, emit) {});
  }
}

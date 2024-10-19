import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feautures/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feautures/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await _homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}

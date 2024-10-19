import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feautures/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feautures/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await _homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}

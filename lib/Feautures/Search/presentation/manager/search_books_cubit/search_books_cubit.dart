import 'package:bloc/bloc.dart';
import 'package:bookly_app/Feautures/Search/data/repos/search_repo.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this._searchRepo) : super(SearchBooksInitial());

  final SearchRepo _searchRepo;

  Future<void> fetchRequestedBooks({required String searchText}) async {
    if (searchText != '') {
      emit(SearchBooksLoading());
      var result =
          await _searchRepo.fetchRequestedBooks(searchText: searchText);

      result.fold((failure) {
        emit(
          SearchBooksFailure(errMessage: failure.errMessage),
        );
      }, (books) {
        emit(
          SearchBooksSuccess(
            books: books,
          ),
        );
      });
    } else {
      emit(SearchBooksInitial());
    }
  }
}

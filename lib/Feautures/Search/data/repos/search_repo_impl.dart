import 'dart:developer';

import 'package:bookly_app/Feautures/Search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService _apiService;

  SearchRepoImpl({required ApiService apiService}) : _apiService = apiService;


  @override
  Future<Either<Failure, List<BookModel>>> fetchRequestedBooks({required String searchText}) async {
    try {
      Map<String, dynamic> data = await _apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=$searchText',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } on Exception catch (e) {
      log(e.toString());
      return left(ServerFailure(
          errMessage: "Oops there was an error, try again later"));
    }
  }
  
}
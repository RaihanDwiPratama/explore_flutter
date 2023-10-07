// import 'package:dio/dio.dart';

abstract class DataState<T, E> {
  final T responseData;
  final E errorResponse;

  DataState({required this.responseData, required this.errorResponse});
}

class DataSuccess<T> extends DataState<T, dynamic> {
  DataSuccess(T responseData) : super(responseData: responseData, errorResponse: {});
}

class DataFailed<E> extends DataState<dynamic, E> {
  DataFailed(E errorResponse) : super(responseData: {}, errorResponse: errorResponse);
}


// import 'package:dio/dio.dart';

// abstract class DataState<T> {
//   final T data;
//   final DioException error;

//   DataState({required this.data, required this.error});
// }

// class DataSuccess<T> extends DataState<T> {
//   DataSuccess(T data) : super(data:data);
// }

// class DataFailed<T> extends DataState<T> {
//   DataFailed(DioException error) : super(error: error);
// }
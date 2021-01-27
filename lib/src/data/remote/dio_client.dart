import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
@injectable

class DioClient{
  Dio _dio = Dio();
  // Get
  Future<dynamic> get(String url,{
    Map<String,dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback progressCallback

  })async {
    try{
  final Response response =  await  _dio.get(
      url,
      queryParameters: queryParameters,
      options:options,
      cancelToken: cancelToken,
      onReceiveProgress: progressCallback
    );
    return response.data;

  }
  catch(e){
    print(e.toString());
    throw e;

  }
  }
    // Post:----------------------------------------------------------------------
  Future<dynamic> post(String uri, {data, Map<String, dynamic> queryParameters,
        Options options,
        CancelToken cancelToken,
        ProgressCallback onSendProgress,
        ProgressCallback onReceiveProgress,
      }) async {
    try {
      final Response response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } catch (e) {
      throw e;
    }
  }
}

import 'package:injectable/injectable.dart';

@injectable

class ApiResponse<T>{
  Status state;
  T data;
  String message;
  ApiResponse.loading(this.message): state = Status.LOADING;
  ApiResponse.completed(this.data): state = Status.COMPLETED;
  ApiResponse.error(this.message): state = Status.ERROR;
  @override
  String toString() {
    return "state : $state message: $message data : $data ";
  }




}
enum Status {LOADING,COMPLETED,ERROR}
sealed class ApiResult<T> {
  R fold<R>(R Function(T data) onSuccess, R Function(String error) onError);
}

class Success<T> extends ApiResult<T> {
  final T data;

  Success(this.data);

  @override
  R fold<R>(R Function(T data) onSuccess, R Function(String error) onError) {
    return onSuccess(data);
  }
}

class Error<T> extends ApiResult<T> {
  final String error;

  Error(this.error);

  @override
  R fold<R>(R Function(T data) onSuccess, R Function(String error) onError) {
    return onError(error);
  }
}

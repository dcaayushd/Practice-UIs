import 'package:dio/dio.dart';
import '../common/http_response_validator.dart';
import '../entity/comment.dart';

abstract class ICommentRemoteDataSource {
  Future<List<CommentEntity>> getAll({required int productId});
}

class CommentDataSource
    with HttpResponseValidator
    implements ICommentRemoteDataSource {
  final Dio httpClint;
  CommentDataSource(this.httpClint);
  @override
  Future<List<CommentEntity>> getAll({required int productId}) async {
    final response = await httpClint.get('comment/list?product_id=$productId');
    validateResponse(response);
    final List<CommentEntity> comment = [];
    for (var jsonData in (response.data as List)) {
      comment.add(CommentEntity.fromJson(jsonData));
    }
    return comment;
  }
}

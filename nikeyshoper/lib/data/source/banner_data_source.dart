import 'package:dio/dio.dart';

import '../common/http_response_validator.dart';
import '../entity/banner_model.dart';

abstract class IBannerDataSource {
  Future<List<BannerEntity>> getall();
}

class BannerRemoteDataSource
    with HttpResponseValidator
    implements IBannerDataSource {
  final Dio httpClient;
  BannerRemoteDataSource.BannerRemoteDataSource(this.httpClient);
  @override
  Future<List<BannerEntity>> getall() async {
    final response = await httpClient.get('banner/slider');
    validateResponse(response);

    var banner = <BannerEntity>[];

    for (var jsonObject in (response.data as List)) {
      banner.add(BannerEntity.fromJson(jsonObject));
    }
    return banner;
  }
}

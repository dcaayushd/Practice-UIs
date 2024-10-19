import '../../common/http_client.dart';
import '../entity/banner_model.dart';
import '../source/banner_data_source.dart';

final bannerRepository =
    BanerRepository(BannerRemoteDataSource.BannerRemoteDataSource(httpClint));

abstract class IBanerRepository {
  Future<List<BannerEntity>> getall();
}

class BanerRepository implements IBanerRepository {
  final IBannerDataSource iBanerDataSeource;
  BanerRepository(this.iBanerDataSeource);

  @override
  Future<List<BannerEntity>> getall() {
    return iBanerDataSeource.getall();
  }
}

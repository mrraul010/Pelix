import 'package:pelix/domain/hotandnew/hotand_new_resp/hotand_new_resp.dart';

class HomeData {
  // Define the fields of HomeData
  final int? id;
  final String? title;
  final String? overview;
  // Add other fields as necessary

  HomeData({
    required this.id,
    required this.title,
    required this.overview,
    // Initialize other fields
  });

  // Define the fromHotAndNewData factory method
  factory HomeData.fromHotAndNewData(HotAndNewData data) {
    return HomeData(
      id: data.id,
      title: data.title,
      overview: data.overview,
      // Map other fields from HotAndNewData to HomeData
    );
  }
}

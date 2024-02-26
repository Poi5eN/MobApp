import '../../../core/app_export.dart';

/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {
  ProductlistItemModel({
    this.image,
    this.nikeAirZoomPegasus,
    this.image,
    this.price,
    this.one,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImageProduct);
    nikeAirZoomPegasus =
        nikeAirZoomPegasus ?? Rx("Nike Air Zoom Pegasus 36 Miami");
    image = image ?? Rx(ImageConstant.imgLoveIconPink300);
    price = price ?? Rx("299,43");
    one = one ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? nikeAirZoomPegasus;

  Rx<String>? image;

  Rx<String>? price;

  Rx<String>? one;

  Rx<String>? id;
}

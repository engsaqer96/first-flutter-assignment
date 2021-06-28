
import 'package:untitled/models/product_model.dart';

class MockData {
  List<Product> products;
  MockData._();
  static final MockData mockData = MockData._();
  List<Product> getproducts() {
    if(products==null){
      products=<Product>[
        Product(
            title: 'Product1',
            price: 100,
            imgPath: 'assets/images/img1.jpeg',
            isFav: false),
        Product(
            title: 'Product2',
            price: 200,
            imgPath: 'assets/images/img2.jpeg',
            isFav: false),
        Product(
            title: 'Product3',
            price: 300,
            imgPath: 'assets/images/img3.jpeg',
            isFav: false),
        Product(
            title: 'Product4',
            price: 400,
            imgPath: 'assets/images/img4.jpeg',
            isFav: false),
      ];
    }
    return products;
  }

}



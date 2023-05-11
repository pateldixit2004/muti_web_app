import 'package:flutter/cupertino.dart';
import 'package:muti_web_app/web/Modal/productModal.dart';

class productProvider extends ChangeNotifier
{

  int? index;

  List<productModal> itemList=[
    productModal(photo: 'assets/image/img.png',name: 'Flipcard'),
    productModal(photo: 'assets/image/img_1.png',name: 'Amazon'),
    productModal(photo: 'assets/image/img_2.png',name: 'meesho'),
    productModal(photo: 'assets/image/img_3.png',name: 'snapdeal'),
  ];

  List inkList=[
    'https://www.flipkart.com/',
    'https://www.amazon.in/',
    "https://www.meesho.com/",
    'https://www.snapdeal.com/',

  ];
}
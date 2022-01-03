import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

class AddProductProvider with ChangeNotifier {

  AddProductProvider(){
    this._select_cat.text = 'food';
  }

  TextEditingController _NameController = TextEditingController();
  TextEditingController _CatController = TextEditingController();
  TextEditingController _ContactController = TextEditingController();
  MoneyMaskedTextController _PriceController =
  MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ',');
  TextEditingController _QuantityController = TextEditingController();
  TextEditingController _Dis1Controller = TextEditingController();
  TextEditingController _Dis2Controller = TextEditingController();
  TextEditingController _Dis3Controller = TextEditingController();
  TextEditingController _select_cat = TextEditingController();

  TextEditingController get select_cat => _select_cat;

  set_select_cat(String value) {
    _select_cat.text = value;
  }

  TextEditingController get name => _NameController;
  setName(String name) {
    _NameController.text = name;
    notifyListeners();
  }

  TextEditingController get cat => _CatController;
  setCat(String cat) {
    _CatController.text = cat;
    notifyListeners();
  }

  TextEditingController get contatct => _ContactController;
  setContact(String contact) {
    _ContactController.text = contact;
    notifyListeners();
  }

  MoneyMaskedTextController get price => _PriceController;
  setPrice(String price) {
    _PriceController.text = price;
    var dprice = double.parse(price);
    assert(dprice is double);
    notifyListeners();
  }

  TextEditingController get quantity => _QuantityController;
  setQuantity(String quantity) {
    _QuantityController.text = quantity;
    var dqunatity = double.parse(quantity);
    assert(dqunatity is double);
    notifyListeners();
  }

  TextEditingController get dis1 => _Dis1Controller;
  setDis1(String dis1) {
    _Dis1Controller.text = dis1;
    var dadis1 = double.parse(dis1);
    assert(dadis1 is double);
    notifyListeners();
  }

  TextEditingController get dis2 => _Dis2Controller;
  setDis2(String dis2) {
    _Dis2Controller.text = dis2;
    var dadis2 = double.parse(dis2);
    assert(dadis2 is double);
    notifyListeners();
  }

  TextEditingController get dis3 => _Dis3Controller;
  setDis3(String dis3) {
    _Dis3Controller.text = dis3;
    var dadis3 = double.parse(dis3);
    assert(dadis3 is double);
    notifyListeners();
  }


}

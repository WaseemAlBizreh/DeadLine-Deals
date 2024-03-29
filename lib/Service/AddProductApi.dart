import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:waseem/Model/ProductModel.dart';

import '../Variables.dart';

class AddProduct with ChangeNotifier {

  AddProduct(){
    this._select_cat.text = "food";
  }

  DateTime date = DateTime(0);
  late XFile _imageFile;
  XFile get imageFile => _imageFile;

  TextEditingController _NameController = TextEditingController();
  TextEditingController _ContactController = TextEditingController();
  TextEditingController _QuantityController = TextEditingController();
  TextEditingController _PriceController = TextEditingController();
  TextEditingController _Dis1Controller = TextEditingController();
  TextEditingController _Dis2Controller = TextEditingController();
  TextEditingController _Dis3Controller = TextEditingController();
  TextEditingController _Days1Controller = TextEditingController();
  TextEditingController _Days2Controller = TextEditingController();
  TextEditingController _Days3Controller = TextEditingController();
  TextEditingController _select_cat = TextEditingController();

  Future<void> datepicker(BuildContext context) async {
    final DateTime? picker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2050)
    );
    if (picker != null && picker != date){
      date = picker;
      notifyListeners();
    }else{
      return;
    }
  }
  
  Future setImage() async {
    var choosedImage =  await ImagePicker().pickImage(source: ImageSource.gallery);
    _imageFile = choosedImage!;
    notifyListeners();
  }

  TextEditingController get select_cat => _select_cat;
  set_select_cat(String value) {
    _select_cat.text = value;
    notifyListeners();
  }

  TextEditingController get name => _NameController;
  setName(String name) {
    _NameController.text = name;
    notifyListeners();
  }

  TextEditingController get contatct => _ContactController;
  setContact(String contact) {
    _ContactController.text = contact;
    notifyListeners();
  }

  TextEditingController get price => _PriceController;
  setPrice(String price) {
    _PriceController.text = price;
    notifyListeners();
  }

  TextEditingController get quantity => _QuantityController;
  setQuantity(String quantity) {
    _QuantityController.text = quantity;
    notifyListeners();
  }

  TextEditingController get dis1 => _Dis1Controller;
  setDis1(String dis1) {
    _Dis1Controller.text = dis1;
    notifyListeners();
  }

  TextEditingController get dis2 => _Dis2Controller;
  setDis2(String dis2) {
    _Dis2Controller.text = dis2;

    notifyListeners();
  }

  TextEditingController get dis3 => _Dis3Controller;
  setDis3(String dis3) {
    _Dis3Controller.text = dis3;
    notifyListeners();
  }
  TextEditingController get days1 => _Days1Controller;
  setDays1(String days1) {
    _Days1Controller.text = days1;
    notifyListeners();
  }

  TextEditingController get days2 => _Days2Controller;
  setDays2(String days2) {
    _Days2Controller.text = days2;
    notifyListeners();
  }

  TextEditingController get days3 => _Days3Controller;
  setDays3(String days3) {
    _Days3Controller.text = days3;
    notifyListeners();
  }
  //Api
  Future AddProductApi(XFile image , ReqProduct requestModel) async {
    //url
    String url = "https://laravel-project-master.000webhostapp.com/api/add";
    try{
      var request = http.MultipartRequest(
          'POST',Uri.parse(url));
      //header
      request.headers.addAll({
        'Accept': 'application/json',
        'auth-token': token.toString(),
      });
      //body
      request.fields.addAll(requestModel.toJson());
      var image_file = await http.MultipartFile.fromPath('image',image.path).catchError((e){
        throw e;
      });
      request.files.add(image_file);
      http.StreamedResponse response = await request.send().catchError((e){
        throw e;
      });
      bool msg;
      if (response.statusCode == 200) {
        msg = true;
        return msg;
      }
      else {
        msg = false;
        return msg;
      }
    }catch(e){
      throw e;
    }
  }
}
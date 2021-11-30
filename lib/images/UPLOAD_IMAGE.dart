import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:watinplus/getx_controller/images_getx_controller.dart';
import 'package:watinplus/storage/app_prefereces.dart';
import 'package:watinplus/utils/helpers.dart';

import '../main.dart';

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({Key? key}) : super(key: key);

  @override
  _UploadImageScreenState createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> with Helpers{


  XFile? xFile;
  ImagePicker _imagePicker=ImagePicker();
  double? _indicatorValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(' تغيير الصورة الشخصية',
          style: TextStyle(
              fontFamily: 'Ooredo',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: HexColor('#019BE1'))),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: _indicatorValue,
            minHeight: 8,
            color: Colors.green,
          ),
          Expanded(
            flex: 3,
            child: xFile!=null?Image.file(File(xFile!.path)):
            TextButton(onPressed: ()async=> await pickImage(),
              child: Text('اختر صورة',style: TextStyle(
                  fontFamily: 'Ooredo',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: HexColor('#019BE1'))),
              style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 0)
              ),
            ),
          ),
          Divider(thickness: 2),
          Expanded(
            flex: 3,
            child: xFile!=null?Image.file(File(xFile!.path)):
            TextButton(onPressed: ()async=> await pickImage(),
              child: Text('حذف الصورة',style: TextStyle(
                  fontFamily: 'Ooredo',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: HexColor('#019BE1'))),
              style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 0)
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: ()async => await performImageUploadet()
            , icon: Icon(Icons.cloud_upload),
            label: Text('تحميل',style:TextStyle(
                fontFamily: 'Ooredo',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: HexColor('#FFFFFF'))),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity,70),
              primary: HexColor('#019BE1')
            ),
          )
        ],
      ),
    );
  }

  Future<void> pickImage() async{
    XFile? pickedImage=await _imagePicker.pickImage(source: ImageSource.camera);
    if(pickedImage!=null){
      setState(() {
        xFile=pickedImage;
      });
    }

  }


  Future<void> performImageUploadet() async{
    if(checkData()){
      await upladImage();
    }
  }

  bool checkData(){
    if(xFile!=null){
      return true;
    }
    showSnackBar(context, message: 'Select image to upload');
    return false;
  }

  Future<void> upladImage() async{
    ChangeIndicatorValue();
    ImagesGetxController.to.uploadImage(filePath: xFile!.path,
      imageUploadEvent: ({Reference? reference,
        required bool status,
        required TaskState taskState}) {
        if(status){
          ChangeIndicatorValue(value: 1);

          showSnackBar(context, message: 'Image uploaded successfully',error: false);
        }else if(taskState==TaskState.error){
          ChangeIndicatorValue(value: 8);
        }
      },);
  }


  void ChangeIndicatorValue({double? value}){
    setState(() {
      _indicatorValue=value;
    });
  }
}



import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

typedef ImageUploadEvent=void Function({
  required bool status,
  required TaskState taskState,
  Reference?  reference
});

class FbStorageController{

  FirebaseStorage _firebaseStorage =FirebaseStorage.instance;

  void  uploadImage({required String filepath,required ImageUploadEvent imageUploadEvent}) {
    UploadTask uploadTask=_firebaseStorage
        .ref('images/${DateTime.now()}_image')
      .putFile(File(filepath));


     uploadTask.snapshotEvents.listen((event) {
       if(event.state==TaskState.running){
          imageUploadEvent(status: false,taskState: event.state);
       }else if(event.state==TaskState.error){
         imageUploadEvent(status: false,taskState: event.state);
       }else if(event.state==TaskState.success){
         imageUploadEvent(status: true,taskState: event.state,reference: event.ref);

       }
     });
  }

  Future<List<Reference>> getImages() async{
    ListResult _listResult=await _firebaseStorage.ref('images/').listAll();
    if(_listResult.items.isNotEmpty){
      return _listResult.items;
    }
    return [];
  }

  Future<bool> deleteImage({required String filePath}) async{
    return await _firebaseStorage
                .ref(filePath)
                .delete()
                .then((value) => true)
                .catchError((error) =>false);
  }

}
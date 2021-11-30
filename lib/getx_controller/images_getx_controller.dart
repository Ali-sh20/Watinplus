import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:watinplus/firebase/fb_storge_controller.dart';
import 'package:get/get.dart';


class ImagesGetxController extends GetxController{

  RxList<Reference> images=<Reference>[].obs;
  FbStorageController _fbStorageController=FbStorageController();

  static ImagesGetxController get to => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    getImages();
    super.onInit();
  }

  Future<void> getImages() async{
    images.value=await _fbStorageController.getImages();

  }

  Future<bool> deleteImage({required int index}) async{
    bool deleted=await _fbStorageController.deleteImage(filePath: images[index].fullPath);
    if(deleted)images.removeAt(index);
     return deleted;
  }

  Future<void> uploadImage({required String filePath,required ImageUploadEvent imageUploadEvent})async {
    _fbStorageController.uploadImage(filepath: filePath, imageUploadEvent: ({
      Reference? reference,
      required bool status,
      required TaskState taskState}) {
      if(status){
        images.add(reference!);
      }
      imageUploadEvent(status: status,taskState: taskState,reference: reference);
    },);
  }
}
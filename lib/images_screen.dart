import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/getx_controller/images_getx_controller.dart';
import 'package:watinplus/utils/helpers.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> with Helpers{

  ImagesGetxController _imagesGetxController=Get.put(ImagesGetxController());

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('IMAGE'),
        ),
        body: Column(
          children: [
            IconButton(
                onPressed: () {

                  // deleteImage(index:_imagesGetxController.images.removeLast());
                  Navigator.pushNamed(context, '/upload_image_screen');
                },
                icon: Icon(Icons.camera_alt_outlined)),
            SizedBox(height: 5,),
            Card(
              clipBehavior: Clip.antiAlias,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),

              ),
              child:CircleAvatar(
                radius: 35,
                child: GetX<ImagesGetxController>(
                  builder:(ImagesGetxController controller) {
                    if(controller.images.isNotEmpty){
                      return FutureBuilder<String>(

                        future: controller.images[(_imagesGetxController.images.length-1)].getDownloadURL(),
                        builder: (context, snapshot) {
                          if(snapshot.connectionState==ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          else if(snapshot.hasData){
                            return   Image.network(snapshot.data!,fit: BoxFit.cover,width: double.infinity,);
                          }else{
                            return Icon(Icons.image,size: 20,);

                          }
                        },
                      );
                    }else{
                      return    Icon(Icons.image_not_supported,size: 20,);

                    }

                  } ,),
              ),

            ),
            SizedBox(height: 5,),

            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.black,

              child:
              GetX<ImagesGetxController>(
                builder:(ImagesGetxController controller) {
                  if(controller.images.isNotEmpty){
                    return FutureBuilder<String>(

                      future: controller.images[(_imagesGetxController.images.length-1)].getDownloadURL(),
                      builder: (context, snapshot) {
                        if(snapshot.connectionState==ConnectionState.waiting){
                          return Center(child: CircularProgressIndicator(),);
                        }
                        else if(snapshot.hasData){
                          return   Image.network(snapshot.data!,fit: BoxFit.cover,);
                        }else{
                          return Icon(Icons.image,size: 20,);

                        }
                      },
                    );
                  }else{
                    return    Icon(Icons.image_not_supported,size: 20,);

                  }

                } ,),



              // Image.asset('images/Untitled-1.png',),
            ),
          ],
        ),
      );

    // GetX<ImagesGetxController>(
      // builder:(ImagesGetxController controller) {
      //   if(controller.images.isNotEmpty){
      //     return GridView.builder(
      //       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      //       itemCount: controller.images.length,
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           mainAxisSpacing: 10,
      //           crossAxisSpacing: 10
      //       ),
      //       itemBuilder: (context, index) {
      //       return Card(
      //         clipBehavior: Clip.antiAlias,
      //         elevation: 3,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(10)
      //         ),
      //         child: FutureBuilder<String>(
      //           future: controller.images[index].getDownloadURL(),
      //           builder: (context, snapshot) {
      //             if(snapshot.connectionState==ConnectionState.waiting){
      //               return Center(child: CircularProgressIndicator(),);
      //             }else if(snapshot.hasData){
      //               return Stack(
      //                 children: [
      //                   Image.network(snapshot.data!,fit: BoxFit.cover,),
      //                   Align(
      //                   alignment:  AlignmentDirectional.bottomCenter,
      //                     child: Container(
      //                       height: 50,
      //                       color:Colors.white70,
      //                       alignment: AlignmentDirectional.centerEnd,
      //                       child: IconButton(onPressed: () async=> await deleteImage(index: index), icon: Icon(Icons.delete,color: Colors.red,)),
      //                     ),
      //                   )
      //                 ],
      //               );
      //
      //             }else{
      //               return Icon(Icons.image,size: 80,);
      //
      //           }
      //           },
      //         ),
      //       );
      //     },);
      //   }else{
      //     return Center(child:
      //     Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Icon(Icons.image_not_supported,size: 80,),
      //         Text('NO Images',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
      //       ],),);
      //
      //   }
      //
      // } ,);
  }

  Future<void> deleteImage({required int index}) async{
    bool deleted=await ImagesGetxController.to.deleteImage(index: index);
    String message=deleted?'Image deleted Successfully':'Faild to delete image';
    showSnackBar(context, message: message,error: !deleted);
  }
}

// import 'dart:io';
//
//
// class CreatePostController extends GetxController{
//   late CachedVideoPlayerController videoPlayerController;
//   final GlobalKey<FormState> createPostFormKey = GlobalKey<FormState>();
//   File? file;
//   File? videoFile;
//   var selectPath = ''.obs;
//   final picker = ImagePicker();
//   bool isShowOptions = true;
//   TextEditingController titleController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();
//
//   handleUpdatePhoto() {
//     selectPath.value = file!.path;
//     update();
//   }
//
//   handleUpdateVideo() {
//     selectPath.value = videoFile!.path;
//     update();
//   }
//
//
//   handleDeleteUpdatePhoto() {
//     selectPath.value = '';
//     update();
//   }
//
//   void updateOptions() {
//     isShowOptions = !isShowOptions;
//     Future.delayed(Duration(seconds: 8)).then((value) {
//       if (isShowOptions) {
//         isShowOptions = !isShowOptions;
//       }
//     });
//     update();
//   }
//
// }
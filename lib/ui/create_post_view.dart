// import 'dart:io';
//
// import 'package:cached_video_player/cached_video_player.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:heart_iod/common/constant/color_constant.dart';
// import 'package:heart_iod/common/constant/font_constant.dart';
// import 'package:heart_iod/common/constant/image_constant.dart';
// import 'package:heart_iod/common/strings/string_assets.dart';
// import 'package:heart_iod/common/widgets/common_widget.dart';
// import 'package:heart_iod/common/widgets/custom_appbar.dart';
// import 'package:heart_iod/common/widgets/custom_button.dart';
// import 'package:heart_iod/common/widgets/custom_text_field.dart';
// import 'package:heart_iod/ui/create_post/create_post_controller.dart';
// import 'package:heart_iod/ui/vidoplayer/video_player_controller.dart';
// import 'package:heart_iod/ui/vidoplayer/video_player_view.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
//
// class CreatePostView extends StatelessWidget {
//   const CreatePostView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder(
//       init: CreatePostController(),
//       builder: (CreatePostController controller) {
//         return Scaffold(
//           backgroundColor: ColorConstant.white,
//           body: buildContent(context, controller),
//         );
//       },
//     );
//   }
//
//   Future showOptions(context, CreatePostController controller) async {
//     showCupertinoModalPopup(
//         context: context,
//         builder: (context) => Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: CupertinoActionSheet(
//                 actions: [
//                   Container(
//                     decoration:
//                         BoxDecoration(color: ColorConstant.home_selected),
//                     child: CupertinoActionSheetAction(
//                       child: CustomTextFields.textField(
//                         fontWeight: FontWeightConstant.bold,
//                         textColor: ColorConstant.white,
//                         text: StringAssets.upload,
//                       ),
//                       onPressed: () {},
//                     ),
//                   ),
//                   CupertinoActionSheetAction(
//                     child: CustomTextFields.textField(text: StringAssets.photo),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                       getImageFromGalleryExtension(controller);
//                     },
//                   ),
//                   CupertinoActionSheetAction(
//                     child: CustomTextFields.textField(text: StringAssets.video),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                       getImageFromVideoExtension(controller);
//                     },
//                   ),
//                 ],
//               ),
//             ));
//   }
//
//   Future<String?> getImageFromGalleryExtension(
//       CreatePostController controller) async {
//     FilePickerResult? pickedFile = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowMultiple: false,
//       allowedExtensions: ['jpg', 'jpeg', 'png'],
//     );
//     // final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 60);
//     // CroppedFile? croppedFile = await ImageCropper().cropImage(
//     //   sourcePath: pickedFile?. ?? "",
//     //   aspectRatioPresets: [
//     //     CropAspectRatioPreset.square,
//     //   ],
//     //   uiSettings: [
//     //     AndroidUiSettings(
//     //         toolbarTitle: 'Cropper',
//     //         toolbarColor: ColorConstant.app_top,
//     //         toolbarWidgetColor: Colors.white,
//     //         statusBarColor: ColorConstant.transparent,
//     //         initAspectRatio: CropAspectRatioPreset.original,
//     //         hideBottomControls: true,
//     //         lockAspectRatio: false),
//     //     IOSUiSettings(
//     //       title: 'Cropper',
//     //     ),
//     //   ],
//     // );
//     controller.file = File(pickedFile?.files.first.path ?? "");
//     controller.handleUpdatePhoto();
//     return null;
//   }
//
//   Future<String?> getImageFromVideoExtension(CreatePostController controller) async {
//   FilePickerResult? pickedFile = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowMultiple: false,
//       allowedExtensions: ['mp4'],
//   );
//     controller.videoFile = File(pickedFile?.files.first.path ?? "");
//     controller.videoPlayerController = CachedVideoPlayerController.file(controller.videoFile!)..initialize().then((_) {
//     controller.videoPlayerController?.play();
//     });
//     controller.handleUpdateVideo();
//     controller.updateOptions();
//     return null;
//   }
//
//
//   Widget buildContent(BuildContext context, CreatePostController controller) {
//     return Column(
//       children: [
//         _appBar(),
//         _content(context, controller),
//       ],
//     );
//   }
//
//   Widget _appBar() {
//     return CustomAppBar(
//       withBackButton: true,
//       backButtonCallBack: () {
//         Get.back();
//       },
//       title: CustomTextFields.textField(
//         text: StringAssets.create_post,
//         fontSize: FontConstant.font_22,
//         fontWeight: FontWeightConstant.semi_bold,
//         textColor: ColorConstant.home_selected,
//       ),
//       isShowDivider: true,
//       centerTitle: true,
//     );
//   }
//
//   Widget _content(BuildContext context, CreatePostController controller) {
//     return Container(
//       padding: EdgeInsets.all(8.0),
//       margin: EdgeInsets.only(left: 25.0, right: 25.0),
//       child: Form(
//         key: controller.createPostFormKey,
//         child: Column(
//           children: [
//             CustomTextFields.textFormField(
//               hintText: StringAssets.title_name,
//               hintColor: ColorConstant.enableLine_color,
//               enableBorderColor: ColorConstant.enableLine_color,
//               cursorColor: ColorConstant.enableLine_color,
//               focusColor: ColorConstant.enableLine_color,
//               errorColor: ColorConstant.red_color,
//               textAlign: TextAlign.left,
//               textInputAction: TextInputAction.next,
//               fontSize: FontConstant.font_16,
//               errorMessage: StringAssets.please_enter_the_title,
//               textColor: ColorConstant.enableLine_color,
//               textEditingController: controller.titleController,
//               errorBorder: ColorConstant.enableLine_color,
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 14.0),
//               child: CustomTextFields.textFormField(
//                 textEditingController: controller.descriptionController,
//                 hintText: StringAssets.descriptions,
//                 hintColor: ColorConstant.enableLine_color,
//                 enableBorderColor: ColorConstant.enableLine_color,
//                 cursorColor: ColorConstant.enableLine_color,
//                 focusColor: ColorConstant.enableLine_color,
//                 validationColor: ColorConstant.red_color,
//                 textAlign: TextAlign.left,
//                 maxLine: 3,
//                 fontSize: FontConstant.font_16,
//                 textColor: ColorConstant.enableLine_color,
//                 textInputAction: TextInputAction.done,
//                 errorBorder: ColorConstant.enableLine_color,
//                 errorMessage: "",
//               ),
//             ),
//             GestureDetector(
//                 onTap: () {
//                   showOptions(context, controller);
//                 },
//                 child: Container(
//                   height: 170,
//                   width: 310,
//                   margin: EdgeInsets.only(top: 40.0),
//                   decoration: BoxDecoration(
//                       color: ColorConstant.backGround_color,
//                       borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                       border: Border.all(color: ColorConstant.white_bg_shadow)),
//                   child: controller.selectPath.value.isEmpty
//                       ? Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             SvgPicture.assets(
//                               ImageConstant.upload,
//                               height: 20,
//                               width: 30,
//                             ),
//                             Container(
//                               margin: EdgeInsets.only(top: 8.0),
//                               child: CustomTextFields.textField(
//                                   text: StringAssets.upload_photo_video,
//                                   textAlign: TextAlign.center,
//                                   textColor: ColorConstant.enableLine_color,
//                                   fontSize: FontConstant.font_14,
//                                   fontWeight: FontWeightConstant.regular),
//                             ),
//                           ],
//                         )
//                       : Stack(
//                         children: [
//                           ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                             child: Image.file(File(controller.selectPath.value),
//                               fit: BoxFit.cover,
//                               height: Get.size.height,
//                               width: Get.size.width,
//                             ),
//                           ),
//                           ClipRRect(
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                             child: CachedVideoPlayer(controller.videoPlayerController!),
//                           ),
//                           GestureDetector(
//                             behavior: HitTestBehavior.opaque,
//                             onTap: () {
//                               controller.handleDeleteUpdatePhoto();
//                             },
//                             child: Container(
//                               margin: EdgeInsets.only(right: 8.0, top: 8.0),
//                               alignment: Alignment.topRight,
//                               child: SvgPicture.assets(
//                                 controller.selectPath.value.isNotEmpty
//                                     ? ImageConstant.delete
//                                     : "",
//                                 height: 22,
//                                 width: 22,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                 )),
//             Visibility(
//               visible: !CommonWidgets().isKeyBordOpen(context),
//               child: Container(
//                 margin: EdgeInsets.only(top: 35.0),
//                 child: CustomButton.fillButton(
//                     function: () {
//                       if (controller.createPostFormKey.currentState!
//                           .validate()) {}
//                     },
//                     context: context,
//                     width: Get.size.width,
//                     text: StringAssets.submit,
//                     backGroundColor: ColorConstant.home_selected,
//                     fontSize: FontConstant.font_18,
//                     fontWeight: FontWeightConstant.semi_bold),
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

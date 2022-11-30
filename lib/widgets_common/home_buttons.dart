import 'package:emart_app/consts/consts.dart';

Widget homeButtons({width, height, String? title, icon, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: 26),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.size(width, height).make();

  //this button will be used at many places in home screen as this is just a template.
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Constants/Colors Manager/colors_manager.dart';

///default Button
Widget defaultButton({required text, double? width, required Color buttonColor, required Color textColor, Function()? onPressed,}) => SizedBox(
      height: 46,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(26),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            buttonColor,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 14, color: textColor),
        ),
      ),
    );
///////////////////////////////////////////////////////////////////////////////
///default TextFormField
Widget defaultTextFormField({Color underlineColor = AppColor.secondaryColor, required String imageSuffixIcon, TextEditingController? controller,}) => TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: ImageIcon(AssetImage(imageSuffixIcon)),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: underlineColor)),
      ),
    );
////////////////////////////////////////////////////////////////////////////////
/// App Bar
AppBar defaultAppBar({required String text, bool centerTitle = false, IconData? leadingIcon, List<Widget>? actionIcon,}) => AppBar(
      backgroundColor: AppColor.whiteColor,
      elevation: 0.0,
      title: Text(
        text,
        style: const TextStyle(color: AppColor.blackColor, fontSize: 20),
      ),
      centerTitle: centerTitle,
      leading: Icon(
        leadingIcon,
        color: AppColor.blackColor,
      ),
      actions: actionIcon,
    );
///////////////////////////////////////////////////////////////////////////////////////////
Widget verificationField({required dynamic context})=>SizedBox(
  height: 48,
  width: 48,
  child: TextFormField(
    style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
    keyboardType: TextInputType.phone,
    textAlign: TextAlign.center,
    onChanged: (value){
      if(value.length==1)
      {
        FocusScope.of(context).nextFocus();
      }
    },
    inputFormatters:
    [
      LengthLimitingTextInputFormatter(1),
      FilteringTextInputFormatter.digitsOnly,
    ],
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),

      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColor.secondaryColor)

      ),
    ),
  ),
);
/////////////////////////////////////////////////////////////////////////////////////////
///Social Button
Widget socialButton({required String image})=> Container(
  height: 40,
  width: 40,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: AppColor.secondaryColor),
      image: DecorationImage(
          image: AssetImage(image))),
);
///////////////////////////////////////////////////////////////////////////////
///Navigator
void navigateTo({required BuildContext context,required Widget widget})=>Navigator.push(context, MaterialPageRoute(builder: (context) => widget,));



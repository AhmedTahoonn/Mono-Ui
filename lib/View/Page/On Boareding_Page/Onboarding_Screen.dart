import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../Components/Components_Page.dart';
import '../../Constants/Colors Manager/colors_manager.dart';
import '../../Constants/Images Manager/Images_manager.dart';
import '../../Models/onBoarding_model/onBoarding_model.dart';
import '../Sign in Page/Sign in Page.dart';

class onBoarding_Screen extends StatelessWidget {
  List<OnBoardingModel> onBoardingItems = [
    OnBoardingModel(
      text: "Find your service",
      description: "Lorem Ipsum is simply dummy \n text of the printing",
      image: AppImages.onBoarding1,
    ),
    OnBoardingModel(
      text: "Apply your service with us !",
      description: "Lorem Ipsum is simply dummy \n text of the printing",
      image: AppImages.onBoarding2,
    ),
  ];
  PageController boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(flex: 3, child: PageView.builder(physics: const BouncingScrollPhysics(), controller: boardController, itemBuilder: (context, index) => buildOnBoardingItem(onBoardingItems[index],), itemCount:onBoardingItems.length,),),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const Spacer(),
                    SmoothPageIndicator(controller: boardController, count: onBoardingItems.length, effect:  const WormEffect(activeDotColor: AppColor.secondaryColor, dotColor: AppColor.greyColor, dotHeight: 16, dotWidth: 16, type: WormType.thin,),),
                    const Spacer(),
                    defaultButton(text: "Continue", textColor: AppColor.whiteColor, buttonColor: AppColor.primaryColor, width: double.infinity, onPressed: () {navigateTo(context: context,widget: Sign_in_page());}
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOnBoardingItem(OnBoardingModel model) => Column(
        children: [
          const Spacer(),
          Image(image: AssetImage(model.image), width: 235, height: 265,),
          Text(model.text, style: const TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold,),),
          const SizedBox(height: 10,),
          Text(model.description, style: const TextStyle(fontSize: 16, color: Colors.grey,), textAlign: TextAlign.center,),
        ],
      );
}

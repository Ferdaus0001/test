import 'package:carousel_slider/carousel_slider.dart';
import 'package:ferdaus/common_widgets/costomContiner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/Costom_imageScreen.dart';  // ScreenUtil Import

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {

    List<String> image = [
      'https://img.freepik.com/free-psd/e-commerce-concept-facebook-template_23-2149901072.jpg?semt=ais_hybrid',
      'https://img.freepik.com/free-psd/special-sales-banner-template_23-2148975924.jpg?uid=R136936650&ga=GA1.1.1903943743.1732333339&semt=ais_hybrid',
      'https://img.freepik.com/free-psd/cyber-monday-landing-page-template_23-2148725366.jpg?uid=R136936650&ga=GA1.1.1903943743.1732333339&semt=ais_hybrid',
    ];


    // ferdaus code

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.menu, size: 33.sp),
        ),
        title: Text(
          'Ferdaus Shopping',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 33.sp),
          ),
          Padding(padding: EdgeInsets.all(5))
        ],
      ),
       // End of app bar


      body: Padding(
        padding: EdgeInsets.all(15.w),  // Responsive padding
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HI Ferdaus',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,  // Responsive font size
                ),
              ),
              Text(
                'Let\'s start shopping',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 14.h),
          
          
              // CarouselSlider for banner
              CarouselSlider.builder(
                itemCount: image.length,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                    margin: EdgeInsets.all(5.w),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30.r),
                      image: DecorationImage(
                        image: NetworkImage(image[itemIndex]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 200.h,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                ),
              ),
              SizedBox(height: 11.h),
          
              // Row for text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Category',
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5020D5),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      style: TextStyle(color: Color(0xFF5020D5)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
               // this is a lits view for top products
              SizedBox(
                height: 90.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: productList.length,
                  primary: false,
                  itemBuilder: (_, index) {
                    return Container(
          
                      height: 100.h,
                      margin: EdgeInsets.all(7.w),
                      width: 100.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(productList[index].imageUrl,),fit: BoxFit.cover,),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: Colors.grey,width: 1),
                      ),
                    );
                  },
                ),
              ),
              // end list vider.bilder ;;
              /// ToDo   come for late,
              SizedBox(height: 11.h,),
               GridView.builder(
                 shrinkWrap: true,
               itemCount: productList.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                     crossAxisSpacing: 16,
                     mainAxisSpacing: 16,
                     childAspectRatio: .9
                   ),
                   itemBuilder: (_,indext){
                return CostomContinters();  // this is a custom container
                   }
               ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ferdaus/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CostomContinters extends StatelessWidget {
  const CostomContinters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: Colors.black26, // বর্ডারের রঙ
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          // Top Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Container(
                 alignment: Alignment.center,
                 padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                 height: 30,

                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                   color: Colors.white
                 ),
               child: Text('%50 '),
               ),
              InkWell(
                onTap: (){
                  Get.snackbar('massage',' Products add successful ',backgroundColor: Colors.blue,colorText: Colors.white);
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: const Icon(CupertinoIcons.heart, color: Colors.grey),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Image.network(
                'https://s3-alpha-sig.figma.com/img/6a7b/a32b/aea10f1dcff705927fbe014ee542b68d?Expires=1733097600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=oOyKX1XTNCyjtv1-6tedk1r5Wk6F9ag9iRps5Gj0bwMm132MMsO3q4vM4xVZnoQMu3kxYYxGCcO7Zp4UtficQJMiHSG5SymxM5pALIY9yyoO7UQsdEE9VrB9yaHeFnj05UBQR74XLwzH6hShKMX37xRRiE7fT-UhAcO2vfsLp3qlHF~x-X5BDDgNdFYroW4dRzZgM~1Y7kASijrDGrl7pFWhI0GjMix7hnMfQQ2vj2SOm2HSR7fTjoQsW-yKf7qJ5zGNYXBCzJpwTScwr0dweoSUWEBLWqgPqmUelMzVoPbhNh65bboj8UnGRKpuPPAF4txmTlAMJbbWKaFLyOk~lQ__',
                height: 120,
                width: 190,
              ),
              const Text(
                'Redmi Watch 9',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '\$500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    '\$600',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              )
            ],
          ),
          //


        ],
      ),
    );
  }
}

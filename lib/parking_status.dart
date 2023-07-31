import 'package:flutter/material.dart';
import 'package:simple_ui_flutter/styles/customTextStyle.dart';
import 'package:simple_ui_flutter/styles/styling.dart';

class ParkingStatus extends StatefulWidget {
  const ParkingStatus({super.key});

  @override
  State<ParkingStatus> createState() => _ParkingStatusState();
}

class _ParkingStatusState extends State<ParkingStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styling.bgColor,
      appBar: AppBar(
        backgroundColor: Styling.primaryColor,
        title: const Text('Parking Status', style: CustomTextStyle.font_16,textAlign: TextAlign.center,),
        actions: [
          Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Styling.bgColor,
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 33, left: 16,right: 141, bottom: 12),
                    child: Text('Current Reserved', style: CustomTextStyle.font_18,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
                    child: Container(
                      width: 343,
                      height: 102,
                      color: Styling.bgColor,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15, left: 12,bottom: 5),
                                child: Text('aliakber123@gmail.com', style: CustomTextStyle.font_12),
                              ),
                              const Text('30',style: CustomTextStyle.font_15_27,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
                    child: Container(
                      width: 343,
                      height: 102,
                      color: Styling.bgColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
        ),
    );
  }
}
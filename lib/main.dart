import 'package:easy_pie_chart/easy_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final dataMap = <String,double>{
    "Future Visits":10,
    "Future Vaccination":10,
    "Future Lab Tests":10,
    "Surgeries":10
  };
  final colorList = <Color>[
    Colors.greenAccent
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

           children:  [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Text("Hello Samuel"),
                 IconButton(
                     onPressed: (){},
                     icon: const Icon(Icons.notifications))
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
               IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month),color: Colors.blue,),
               IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month),color: Colors.blue,),
               IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month),color: Colors.amber,),

             ],),
             EasyPieChart(
               key: const Key('pie 6'),
               children: [
                 PieData(value: 0.15, color: Colors.yellow),
                 PieData(value: 0.35, color: Colors.cyan),
                 PieData(value: 0.45, color: Colors.lightGreen),
               ],
               pieType: PieType.fill,
               onTap: (index) {},
               start: 180,
               animateFromEnd: true,
               size: 130,
             ),

             Card(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                 Row(
                   children: [
                     IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month)),
                     const Text("Future Visits"),
                   ],
                 ),
                 Row(
                   children: [
                     CircleAvatar(child: Text("1"),),
                     IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
                   ],
                 ),
                 ],
               ),
             ),
             Card(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       IconButton(onPressed: (){}, icon: Icon(Icons.vaccines)),
                       const Text("Future Vaccinations"),
                     ],
                   ),
                   Row(
                     children: [
                       CircleAvatar(child: Text("1"),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
                     ],
                   ),
                 ],
               ),
             ),
             Card(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       IconButton(onPressed: (){}, icon: Icon(Icons.dirty_lens_outlined)),
                       const Text("Future Lab Tests"),
                     ],
                   ),
                   Row(
                     children: [
                       CircleAvatar(child: Text("1"),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
                     ],
                   ),
                 ],
               ),
             ),
             Card(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month)),
                       const Text("Surgeries"),
                     ],
                   ),
                   Row(
                     children: [
                       CircleAvatar(child: Text("1"),),
                       IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
                     ],
                   ),
                 ],
               ),
             ),
             SizedBox(height: 10,),
             Text("Active Medications",style: TextStyle(fontWeight: FontWeight.bold,),),
             SizedBox(height: 10,),



             Container(
               margin: const EdgeInsets.symmetric(vertical: 20),
               height: 200,
               child: ListView(
                 // This next line does the trick.
                 scrollDirection: Axis.horizontal,
                 children: <Widget>[
                   Container(
                     width: 300,
                     height: 100,
                     child:  Card(

                       child: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text('ENTRESTO, 100 mg',style: TextStyle(fontWeight: FontWeight.bold),),
                             Text('2/days'),
                             SizedBox(height: 16),
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     IconButton(onPressed: (){}, icon: Icon(Icons.access_alarms)),
                                     IconButton(onPressed: (){}, icon: Icon(Icons.sunny)),
                                     IconButton(onPressed: (){}, icon: Icon(Icons.nightlight_outlined))
                                   ],
                                 ),
                               ],
                             ),

                           ],
                         ),
                       ),
                     ),
                   ),
                   Container(
                     width: 300,
                     height: 100,
                     child:  Card(

                       child: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text('ENTRESTO, 100 mg',style: TextStyle(fontWeight: FontWeight.bold),),
                             Text('2/days'),
                             SizedBox(height: 16),
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     IconButton(onPressed: (){}, icon: Icon(Icons.access_alarms)),
                                     IconButton(onPressed: (){}, icon: Icon(Icons.sunny)),
                                     IconButton(onPressed: (){}, icon: Icon(Icons.nightlight_outlined))
                                   ],
                                 ),
                               ],
                             ),

                           ],
                         ),
                       ),
                     ),
                   ),


                 ],
               ),
             ),
             Text("Tracking Measures",style: TextStyle(fontWeight: FontWeight.bold,),),
             // Container(
             //   child:   Card(
             //     child: Padding(
             //       padding: const EdgeInsets.all(8.0),
             //       child: Column(
             //         mainAxisAlignment: MainAxisAlignment.start,
             //         crossAxisAlignment: CrossAxisAlignment.start,
             //         children: [
             //         Text("Feb 15,2023"),
             //         Divider(thickness: 1.0),
             //         Row(
             //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
             //           children: [
             //            Text('B12',style: TextStyle(fontWeight: FontWeight.bold,),),
             //         Row(
             //           mainAxisAlignment: MainAxisAlignment.spaceAround,
             //           children: [
             //             Text('173 pg/ml',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
             //             SizedBox(width: 5,),
             //             Container(
             //               decoration: BoxDecoration(
             //                 color: Colors.red.withOpacity(0.1),
             //                 borderRadius: BorderRadius.circular(20.0),
             //
             //               ),
             //
             //               child: Padding(
             //                 padding: const EdgeInsets.all(8.0),
             //                 child: const Text('Off Track',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
             //               ),),
             //           ],
             //         ),
             //         ],),
             //           SizedBox(height: 10,),
             //            LinearProgressBar(
             //             maxSteps: 6,
             //             progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
             //             currentStep: 1,
             //             progressColor: Colors.red.withOpacity(0.9),
             //             backgroundColor: Colors.green,
             //           ),
             //           SizedBox(height: 10,),
             //         Text("Last test result: 154 pg/ml(90 days ago)")
             //
             //       ],),
             //     ),
             //   ),
             // ),


          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 100,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Feb 15,2023"),
                          Divider(thickness: 1.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('B12',style: TextStyle(fontWeight: FontWeight.bold,),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('173 pg/ml',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(20.0),

                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Text('Off Track',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                                    ),),
                                ],
                              ),
                            ],),
                          SizedBox(height: 10,),
                          LinearProgressBar(
                            maxSteps: 6,
                            progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                            currentStep: 1,
                            progressColor: Colors.red.withOpacity(0.9),
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(height: 10,),
                          Text("Last test result: 154 pg/ml(90 days ago)")

                        ],),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Feb 15,2023"),
                          Divider(thickness: 1.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('B12',style: TextStyle(fontWeight: FontWeight.bold,),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('173 pg/ml',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                                  SizedBox(width: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(20.0),

                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Text('Off Track',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                                    ),),
                                ],
                              ),
                            ],),
                          SizedBox(height: 10,),
                          LinearProgressBar(
                            maxSteps: 6,
                            progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                            currentStep: 1,
                            progressColor: Colors.red.withOpacity(0.9),
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(height: 10,),
                          Text("Last test result: 154 pg/ml(90 days ago)")

                        ],),
                    ),
                  ),
                ),


              ],
            ),
          ),

             // Container(
             //   padding: EdgeInsets.symmetric(horizontal: 16),
             //   child: PieChart(
             //     dataMap: dataMap,
             //      chartType: ChartType.ring,
             //     baseChartColor: Colors.grey,
             //     colorList: colorList,
             //     chartValuesOptions: const ChartValuesOptions(
             //       showChartValuesInPercentage: true,
             //     ),
             //     totalValue: 40,
             //
             //   ),
             // ),


           ],
          ),
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




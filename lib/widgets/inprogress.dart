import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class InProgress extends StatelessWidget {
   InProgress({super.key});
   List<Map<String, dynamic>> tasks = [
     {
       "title": "Office Project",
       "suptitle": "23 Tasks",
       "details": "Project deadline is next week",
       "icon": Icons.work,
       "lineWidth": 7.0,
       "percent": 0.85,
       "center": "85%",
       "progressColor": Colors.pink[400],
       "Color": Colors.pink[200],
       "width": 230.0,
       "lineHeight": 10.0,
     },
     {
       "title": "Shopping List",
       "suptitle": "10 Tasks",
       "details": "Buy groceries before Friday",
       "icon": Icons.shopping_cart,
       "lineWidth": 7.0,
       "percent": 0.6,
       "center": "60%",
       "progressColor": Colors.blue[400],
       "Color": Colors.blue[200],
       "width": 230.0,
       "lineHeight": 10.0,
     },
     {
       "title": "Meeting Notes",
       "suptitle": "5 Tasks",
       "details": "Prepare presentation slides",
       "icon": Icons.note,
       "lineWidth": 7.0,
       "percent": 0.75,
       "center": "75%",
       "progressColor": Colors.green[400],
       "Color": Colors.green[200],
       "width": 230.0,
       "lineHeight": 10.0,
     },
     {
       "title": "Daily Exercise",
       "suptitle": "7 Tasks",
       "details": "Complete workout routine",
       "icon": Icons.fitness_center,
       "lineWidth": 7.0,
       "percent": 0.5,
       "center": "50%",
       "progressColor": Colors.orange[400],
       "Color": Colors.orange[200],
       "width": 230.0,
       "lineHeight": 10.0,
     },
     {
       "title": "Reading",
       "suptitle": "15 Tasks",
       "details": "Read new books this month",
       "icon": Icons.book,
       "lineWidth": 7.0,
       "percent": 0.65,
       "center": "65%",
       "progressColor": Colors.purple[400],
       "Color": Colors.purple[200],
       "width": 230.0,
       "lineHeight": 10.0,
     },
     {
       "title": "Cooking Class",
       "suptitle": "8 Tasks",
       "details": "Learn new recipes",
       "icon": Icons.kitchen,
       "lineWidth": 7.0,
       "percent": 0.7,
       "center": "70%",
       "progressColor": Colors.red[400],
       "Color": Colors.red[200],
       "width": 230.0,
       "lineHeight": 10.0,
     },
   ];


   @override
   Widget build(BuildContext context) {
     return Container(
       height: 150, // التحكم في الارتفاع المناسب
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: tasks.length,
         itemBuilder: (context, index) {
           final task = tasks[index];
           return Container(
             margin: EdgeInsets.symmetric(horizontal: 10),
             padding: EdgeInsets.all(10),
             width: 250,
             decoration: BoxDecoration(
               color: task["Color"],
               borderRadius: BorderRadius.circular(15),
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     Text(
                       task['title'],
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 18,
                         color: Colors.black,
                       ),
                     ),
                     Spacer(),
                     Icon(
                       task['icon'],
                       color: Colors.black,
                     ),
                   ],
                 ),
                 SizedBox(height: 20),

                 Text(
                   task['details'],
                   style: TextStyle(
                     fontSize: 14,
                     color: Colors.black,
                   ),
                 ),
                 SizedBox(height: 20),
                 LinearPercentIndicator(
                   width: task["width"],
                   animation: true,
                   lineHeight: task["lineHeight"],
                   animationDuration: 250,
                   percent: task['percent'],
                   linearStrokeCap: LinearStrokeCap.roundAll,
                   progressColor: task['progressColor'],
                 ),
               ],
             ),
           );
         },
       ),
     );
   }
}
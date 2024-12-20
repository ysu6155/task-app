import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:taskapp/widgets/inprogress.dart';

class Home extends StatelessWidget {
  Home({super.key});
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
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,  // التحكم في الحجم هنا
            backgroundImage: NetworkImage("https://picsum.photos/200/300?random=52"),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello "),
            Text("Youssif Shaban"),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_alert))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.blue[700],
                      ),
                      padding: EdgeInsets.all(20),
                      height: 150,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("your today's task almost done!", style: TextStyle(color: Colors.white)),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("View Task"),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: CircularPercentIndicator(
                              radius: 40,
                              lineWidth: 7,
                              percent: .85,
                              center: Text("85%", style: TextStyle(color: Colors.white)),
                              progressColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.white)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("IN Progress ", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 15,
                      child: Text("${tasks.length}"),
                    )
                  ],
                ),
                SizedBox(height: 20),
                 InProgress(),

                SizedBox(height: 20),
                Row(
                  children: [
                    Text("Task Groups ", style: TextStyle(fontWeight: FontWeight.bold)),
                    CircleAvatar(
                      radius: 15,
                      child: Text("${tasks.length}"),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // منع التمرير داخل القائمة
                  itemBuilder: (BuildContext context, int index) {
                    var task = tasks[index];
                    return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),  // المسافة بين العناصر
                    decoration: BoxDecoration(
                    color: Colors.white70, // تحديد اللون
                    borderRadius: BorderRadius.circular(12), // حواف دائرية
                    boxShadow: [
                    BoxShadow(
                    color: Colors.black26, // اللون الرمادي للظل
                    offset: Offset(0, 2), // تحريك الظل في اتجاهات معينة
                    blurRadius: 6, // تحديد درجة الضبابية
                    ),
                    ],
                    ),
                    child:
                      ListTile(

                      leading: Container(
                  child: Icon(task['icon'],color: Colors.black87,),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: task['progressColor'],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      title: Text(task['title']),
                      subtitle: Text(task['suptitle']),
                      trailing: CircularPercentIndicator(
                        radius: 25,
                        lineWidth: task["lineWidth"],
                        percent: task["percent"],
                        center: Text(task["center"], style: TextStyle(color: Colors.black87)),
                        progressColor: task['progressColor'],
                      ),
                    ));
                  },
                  itemCount: tasks.length,

                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.blue[900],
        onPressed: () => (){},
        child: Icon(Icons.add,color: Colors.white,),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home,color: Colors.blue[900],),
              onPressed: () => (){},            ),
            IconButton(
              icon: Icon(Icons.search,color: Colors.blue[900],),
              onPressed: () => (){},
            ),
            SizedBox(width: 40), // مسافة لمكان الزر العائم
            IconButton(
              icon: Icon(Icons.notifications,color: Colors.blue[900],),
              onPressed: () => (){},
            ),
            IconButton(
              icon: Icon(Icons.person,color: Colors.blue[900],),
              onPressed: () =>(){},
            ),
          ],
        ),
      ),
    );
  }
}

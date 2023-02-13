import 'package:flutter/material.dart';

class working extends StatefulWidget {
  working({Key? key}) : super(key: key);

  @override
  State<working> createState() => _workingState();
}

class _workingState extends State<working> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff06574F),
              title: Text('WhatsApp'),
              actions: [
                Icon(Icons.search),
                SizedBox(width: 30),
                Icon(Icons.tab),
                SizedBox(width: 20)
              ],
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text('CHATS'),
                  ),
                  Tab(
                    child: Text('STATUS'),
                  ),
                  Tab(
                    child: Text('CALLS'),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Mylist(),
                Scaffold(
                  appBar: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Container(
                          width: double.infinity,
                          height: 66,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 23,
                                  backgroundColor: Colors.green,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 40, top: 5),
                                      child: Text(
                                        'MyStatus',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        'Tap to add status update',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  body: Mylist1(),
                ),
                Mylist2(),
              ],
            ),
          ),
        ));
  }
}

class MyTile extends StatelessWidget {
  MyTile(this.index);

  int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.green,
      ),
      title: Text('Username ${index}',
          style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text('hallo my friend'),
      trailing: Text('4:20',
          style: TextStyle(fontSize: 12, color: Color(0xffC3C3C3))),
      enabled: true,
    );
  }
}

class Mylist extends StatelessWidget {
  const Mylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Center(
            child: Container(
          width: 300,
          height: 0.5,
          color: Colors.grey,
        )),
        itemCount: 100,
        itemBuilder: (context, index) => MyTile(index),
      ),
    );
  }
}

class Mylist1 extends StatelessWidget {
  const Mylist1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => myTile1(index),
          separatorBuilder: (context, index) => Center(
              child: Container(width: 300, height: 0.5, color: Colors.grey)),
          itemCount: 100),
    );
  }
}

class myTile1 extends StatelessWidget {
  myTile1(this.index);

  int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.green,
      ),
      title: Text('Username ${index}',
          style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text('2 Minutes ago'),
      trailing: Icon(Icons.show_chart),
      enabled: true,
    );
  }
}

class Mylist2 extends StatelessWidget {
  const Mylist2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => myTile2(index),
          separatorBuilder: (context, index) => Center(
              child: Container(width: 300, height: 0.5, color: Colors.grey)),
          itemCount: 100),
    );
  }
}

class myTile2 extends StatelessWidget {
  myTile2(this.index);

  int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.green,
      ),
      title: Text('Username ${index}',
          style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text('2 Minutes ago'),
      trailing: Icon(Icons.call),
      enabled: true,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/UI/ChatScreen.dart';



class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>with SingleTickerProviderStateMixin {

  late TabController _tabController;
  late ScrollController scrollController;

  @override
  void initState() {
    _tabController=TabController(length: 4, vsync: this);
    scrollController=ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (
            BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              actions:<Widget> [
                const Icon(Icons.search_rounded,color: Colors.white,),
                Container(width: 10,),
                const Icon(Icons.more_vert,color: Colors.white,),
                Container(width: 10,),
              ],
              pinned: true,
              floating: true,
              backgroundColor: const Color(0XFF075e54),
              title:const Text("What'sApp",style: TextStyle(color: Colors.white),),
              bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 4.0,
                controller: _tabController,
                tabs:const [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(text: "CHATS",),
                Tab(text: "STATUS",),
                Tab(text: "CALLS",),
              ]),),
          ];
        },
        body:  TabBarView(
        controller: _tabController,
          children: [

          const Text("Camera"),
          ChatScreen(),
        const  Text("Status"),
        const  Text("Calls"),
      ]),),
    );
  }
}

  import 'package:dio/dio.dart';
  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:retrofit_api_demo/model_api.dart';

  import 'api_g.dart';

  class HomeScreen extends StatefulWidget {
    const HomeScreen({Key? key}) : super(key: key);

    @override
    _HomeScreenState createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen> {
    List<ApiModel> demo = [];
    late RestClient apiMethd;
    late ApiModel ret;

    // get index => null;

    @override
    void initState() {
      Dio dio = Dio();
      apiMethd = RestClient(dio);
      apiMethd.getUser().then((value) {
        demo = value;
        print(demo);
        setState(() {

        });
      });
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Home'),
            ),
          ),
          body: ListView.builder(
              itemCount: demo.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      // Text('${ret!.completed}'),
                      Text('${demo[index].userId}'),
                      Text('${demo[index].completed}'),
                      Text('${demo[index].title}'),
                    ],
                  ),
                );
                //   },
                // ),
              }));
    }
  }

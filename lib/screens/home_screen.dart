import 'package:flutter/material.dart';
import 'package:flutter_webtoon_app/services/api_service.dart';
import 'package:flutter_webtoon_app/models/webtoon_model.dart';
<<<<<<< HEAD
=======
import 'package:flutter_webtoon_app/widgets/webtoon_widget.dart';
>>>>>>> 0f0db6a (Update webtoon app code)

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(fontSize: 24),
        ),
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
<<<<<<< HEAD
                Expanded(child: makeList(snapshot))
              ],
            );
          }
          return const Center();
=======
                Expanded(
                  child: makeList(snapshot),
                ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
>>>>>>> 0f0db6a (Update webtoon app code)
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
<<<<<<< HEAD
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        print(index);
        var webtoon = snapshot.data![index];
        return Text(webtoon.title);
=======
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Webtoon(
            title: webtoon.title, thumb: webtoon.thumb, id: webtoon.id);
>>>>>>> 0f0db6a (Update webtoon app code)
      },
      separatorBuilder: (context, index) => const SizedBox(width: 20),
    );
  }
}

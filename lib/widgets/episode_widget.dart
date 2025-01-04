import 'package:flutter/material.dart'; // Add this import
import 'package:flutter_webtoon_app/models/webtoon_episode_model.dart'; // Ensure this path is correct
import 'package:url_launcher/url_launcher_string.dart'; // Add this import

class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
    required this.webtoonId,
  });

  onButtonTap() async {
    await launchUrlString(
        "https://comic.naver.com/webtoon/detail?titleId$webtoonId&no=${episode.id}");
  }

  final WebtoonEpisodeModel episode;
  final String webtoonId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.green),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  episode.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              const Icon(
                Icons.chevron_left_rounded,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

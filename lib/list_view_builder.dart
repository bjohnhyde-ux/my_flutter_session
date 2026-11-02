import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Avatar & Square List'),
      ),
      body: const Column(
        children: [
          // Custom widget 1: Top horizontal list with circular avatars.
          AvatarListWidget(),
          // Custom widget 2: Body list with vertically scrolling - square photos.
          SquarePhotoListWidget(),
        ],
      ),
    );
  }
}

// Custom widget for horizontal circular avatar ListView.
class AvatarListWidget extends StatelessWidget {
  // Constructor for AvatarListWidget.
  const AvatarListWidget({super.key});
  final List<String> avatarImages = const [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGAlJo_R24UfTT6WNkeFqHpnusD_HixGSMCTbOZq51zQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnXJIwtEz6vsLBIIuSQi0sQ7mTgbqfUbOhfWq2qrvOSg&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe67aNArpmnGmuMpD_0IbQaJ4S2IWUTRfdvBGvhUxE3A&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS4gU4MW7sJx_xLYrQ2HZ9BrlVBmAi1ScwmH1xmQUgFw&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSgsV9X42uqgtRsv5NDV2UiTlN7s9iFRuQkiToxIf-aA&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpShdArdtqyvnYntCiHrXWuwkTVDgpWNzbRag5TmqtQQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGAlJo_R24UfTT6WNkeFqHpnusD_HixGSMCTbOZq51zQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnXJIwtEz6vsLBIIuSQi0sQ7mTgbqfUbOhfWq2qrvOSg&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe67aNArpmnGmuMpD_0IbQaJ4S2IWUTRfdvBGvhUxE3A&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS4gU4MW7sJx_xLYrQ2HZ9BrlVBmAi1ScwmH1xmQUgFw&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSgsV9X42uqgtRsv5NDV2UiTlN7s9iFRuQkiToxIf-aA&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpShdArdtqyvnYntCiHrXWuwkTVDgpWNzbRag5TmqtQQ&s=10',
  ];
  
  // Builds the horizontal avatar list.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: avatarImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(avatarImages[index]),
            ),
          );
        },
      ),
    );
  }
}

// Custom widget for the vertical square photo ListView.
class SquarePhotoListWidget extends StatelessWidget {
  // Constructor for SquarePhotoListWidget.
  const SquarePhotoListWidget({super.key});
  final List<String> squareImages = const [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdIlYsGV6iKsIVHO2cyjadylgZfiNOdBixeOaJYmJiFQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhw6rbbRjt0EOhsx2dIQMdAjejx806QS6LCbdtzwOWHw&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS6UzPzOPI5dknIF22ZwN0WyM0rqvlzzLGBPTOp42L9g&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZalQZFNpKt4iHZWO5ghfmzzeQWBGF0T12iPcMG5TrjQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdIlYsGV6iKsIVHO2cyjadylgZfiNOdBixeOaJYmJiFQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhw6rbbRjt0EOhsx2dIQMdAjejx806QS6LCbdtzwOWHw&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS6UzPzOPI5dknIF22ZwN0WyM0rqvlzzLGBPTOp42L9g&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZalQZFNpKt4iHZWO5ghfmzzeQWBGF0T12iPcMG5TrjQ&s=10',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: squareImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 950,
                height: 550,
                child: Image.network(squareImages[index], fit: BoxFit.fitWidth),
              ),
            ),
          );
        },
      ),
    );
  }
}

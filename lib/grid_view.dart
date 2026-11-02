import 'package:flutter/material.dart';


class MyGridViewScreen extends StatelessWidget {
   MyGridViewScreen({super.key});


  List<String> myGallery =
  [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Yubg0W0YIMscWP2g8giMvr1Rcg7nncEKk1V21HclLA&s=10",
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBB4LQTn0vRq4ydPLp-uTj_lEUHOHYWUU18JlCq5KuMw&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4W5se-3sXcI-CuvSm5GbPoSk655stnvqEeWyX1M79KA&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSICmPX7HVrXVG2gS_IWLY_caJf42RHkS3GgaBlU_cUAQ&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0alz_4QfS7tx0wsk8YEeV9r2G4XYdX-ys1p4z7IXC4A&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOzyFEYqkfqQndmgOzZOOARlzz0aG-awZi9pckun0Qeg&s=10'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView.count(
      //     crossAxisCount: 2,
      // mainAxisSpacing: 10,
      // padding: EdgeInsets.all(10),
      // crossAxisSpacing: 10,
      // children: [
      //   CreateContainer(getIcon: Icons.person, getText: "Person", getColor: Colors.teal),
      //   CreateContainer(getIcon: Icons.settings, getText: "settings", getColor: Colors.deepOrange),
      //   CreateContainer(getIcon: Icons.add_alert, getText: "Alert", getColor: Colors.green),
      //   CreateContainer(getIcon: Icons.balance, getText: "Balance", getColor: Colors.amberAccent),
      //   CreateContainer(getIcon: Icons.add_circle, getText: "Add Fund", getColor: Colors.blue),
      //   CreateContainer(getIcon: Icons.panorama_wide_angle, getText: "withdraw", getColor: Colors.cyan),
      //   CreateContainer(getIcon: Icons.pages, getText: "Page", getColor: Colors.red),
      //   CreateContainer(getIcon: Icons.delete, getText: "Delete Account", getColor: Colors.deepPurpleAccent),
      //
      //


      //],
     // ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder
          (
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          //childAspectRatio: .70,
          ),
          itemCount: myGallery.length,

          itemBuilder: (BuildContext context, int index)
        {

          return CreateContainer(
            gallery: myGallery[index],
              //getIcon: Icons.person,
              //getText: "Person",
              getColor: Colors.teal);
        },

        ),
      )

    );
  }
}

class CreateContainer extends StatelessWidget {
  CreateContainer({
    required this.gallery,
    //required this.getIcon,
    //required this.getText,
    required this.getColor,
    super.key,
  });

  //IconData getIcon;
  //String getText;
Color getColor;
String gallery;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {

      },
      child: Container(
        color: getColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          //     Icon(getIcon, size: 100),
          // Text(getText, style: TextStyle(fontSize: 20),),
              Image.network(gallery, fit: BoxFit.cover, width: 500, height: 500,),            ],
          ),
        ),

        ),
    );
  }
}

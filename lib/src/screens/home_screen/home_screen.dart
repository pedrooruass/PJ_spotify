import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF090909),
        // appBar: AppBar(
        //   title: Text("Spotify"),
        // ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(.35),
                  Colors.transparent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 0.3]),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: ListView(
              children: [
                // AppBar
                Row(
                  children: [
                    Text(
                      "Good Evening",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 80),
                    Icon(
                      Icons.history,
                      color: Colors.white54,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.white54,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Favorite Playlists
                Column(
                  children: [
                    playlistRow(),
                    SizedBox(height: 10),
                    playlistRow(),
                    SizedBox(height: 10),
                    playlistRow(),
                  ],
                ),

                SizedBox(height: 30),

                // New Realease
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                  title: Text(
                    "New Realease From",
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                  subtitle: Text(
                    "MC Marks",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        "Music",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      trailing: Icon(Icons.play_circle_filled,
                          size: 35, color: Colors.white54),
                      subtitle: Text(
                        "single - artist",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                Text(
                  "Pra começar o dia",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),

                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      squarePlaylist(),
                      squarePlaylist(),
                      squarePlaylist(),
                    ],
                  ),
                ),

                // Music atualizada
                // Container(
                //   height: 150,
                //   width: 60,
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //   ),
                //   child: Row(
                //     children: [
                //       AspectRatio(
                //         aspectRatio: 1,
                //         child: Placeholder(
                //           color: Colors.black,
                //         ),
                //       ),
                //       SizedBox(width: 10),
                //       Column(
                //         children: [
                //           Text(
                //             "Name of the music",
                //             style: TextStyle(
                //               color: Colors.white,
                //               fontWeight: FontWeight.bold,
                //               fontSize: 17,
                //             ),
                //           ),
                //         ],
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }

  Widget squarePlaylist() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red,
      ),
      width: 150,
      margin: EdgeInsets.only(right: 10),
      // child: Image.asset(name)
    );
  }

  Widget playlistRow() {
    return Row(
      children: [
        playlistTile(),
        SizedBox(
          width: 10,
        ),
        playlistTile(),
      ],
    );
  }

  Widget playlistTile() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: GestureDetector(
        onTap: () {
          // Make trow to PlaylistScreen.
        },
        child: Container(
          height: 70,
          color: Colors.grey.shade800,
          width: 160,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset("assets/playlist.jpeg", fit: BoxFit.cover),
              ),
              SizedBox(width: 10),
              Text(
                "Title",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

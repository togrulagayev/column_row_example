import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Image.network(
                scale: 60,
                'https://1000logos.net/wp-content/uploads/2023/07/Threads-Logo.png'),
          ),
          body: const Column(
            children: [
              PostWidget(
                postContent:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id quam in diam ultricies blandit vel ac dui. Morbi vel hendrerit leo. ',
                username: 'user1',
                photoUrl:
                    'https://cdn2.vectorstock.com/i/1000x1000/11/41/male-profile-picture-vector-2051141.jpg',
              ),
              Divider(),
              PostWidget(
                postContent:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id quam in diam ultricies blandit vel ac dui. Morbi vel hendrerit leo. ',
                username: 'flutternewsflutternewsflutternewsflutternews',
                photoUrl:
                    'https://cdn2.vectorstock.com/i/1000x1000/11/41/male-profile-picture-vector-2051141.jpg',
              ),
              Divider(),
              PostWidget(
                postContent:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id quam in diam ultricies blandit vel ac dui. Morbi vel hendrerit leo. ',
                username: 'togrullagayev',
                photoUrl:
                    'https://cdn2.vectorstock.com/i/1000x1000/11/41/male-profile-picture-vector-2051141.jpg',
              ),
              Divider(),
            ],
          )),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String photoUrl;
  final String username;
  final String postContent;

  const PostWidget({
    super.key,
    required this.photoUrl,
    required this.username,
    required this.postContent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 100),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.lightBlue,
                backgroundImage: NetworkImage(photoUrl),
                child: const Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    foregroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWgkOKwyHJVicTaUz12lOKSHIvWHDNqm_ChQ&usqp=CAU',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      username,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '30h',
                        style: GoogleFonts.openSans(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 300,
                child: Text(
                  postContent,
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  FaIcon(FontAwesomeIcons.heart),
                  SizedBox(width: 20),
                  FaIcon(FontAwesomeIcons.comment),
                  SizedBox(width: 20),
                  FaIcon(FontAwesomeIcons.retweet),
                  SizedBox(width: 20),
                  FaIcon(FontAwesomeIcons.paperPlane),
                  SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '999 like',
                style: GoogleFonts.openSans(
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

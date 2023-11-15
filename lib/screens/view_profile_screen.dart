// ignore_for_file: use_build_context_synchronously

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wechat/helper/my_date_util.dart';
import 'package:wechat/models/chat_user.dart';

import '../main.dart';

class ViewProfileScreen extends StatefulWidget {
  final ChatUser user;

  const ViewProfileScreen({super.key, required this.user});

  @override
  State<ViewProfileScreen> createState() => _ViewProfileScreenState();
}

// profile screen -- to show signed in user info
class _ViewProfileScreenState extends State<ViewProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // for hiding keyboard when a tap is detected on screen
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.user.name,
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Joined On: ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                )),
            Text(
              MyDateUtil.getMessageTimeJoin(
                  context: context,
                  time: widget.user.createdAt,
                  showYear: true),
              style: const TextStyle(color: Colors.black54, fontSize: 16),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
          child: SingleChildScrollView(
            child: Column(children: [
              // for adding some space
              SizedBox(
                width: mq.width,
                height: mq.height * .03,
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(mq.height * .1),
                child: CachedNetworkImage(
                  width: mq.height * .2,
                  height: mq.height * .2,
                  fit: BoxFit.cover,
                  imageUrl: widget.user.image,
                  // placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const CircleAvatar(
                    child: Icon(CupertinoIcons.person),
                  ),
                ),
              ),

              // for adding some space
              SizedBox(
                height: mq.height * .03,
              ),

              Text(
                widget.user.email,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),

              SizedBox(height: mq.height * .02),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('About: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                  Text(
                    widget.user.about,
                    style: const TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ],
              ),

              // for adding some space
              SizedBox(
                height: mq.height * .05,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

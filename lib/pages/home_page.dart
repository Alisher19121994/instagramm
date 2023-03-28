import 'package:flutter/material.dart';

import '../model/post_model.dart';
import '../model/story_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page_id";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Story> _listStory = [
    Story("assets/images/muc.jpeg", "Alisher"),
    Story("assets/images/muc.jpeg", "Bobu"),
    Story("assets/images/muc.jpeg", "Muhammad Ziyo"),
    Story("assets/images/muc.jpeg", "Ulug'bek"),
    Story("assets/images/muc.jpeg", "Abbos"),
    Story("assets/images/muc.jpeg", "Alisher"),
    Story("assets/images/muc.jpeg", "Bobu"),
    Story("assets/images/muc.jpeg", "Muhammad Ziyo"),
    Story("assets/images/muc.jpeg", "Ulug'bek"),
    Story("assets/images/muc.jpeg", "Abbos"),
  ];
  List<Post> _listPost = [
    Post(
        username: "Alisher",
        userImage: "assets/images/mud.jpeg",
        postImage: "assets/images/mue.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."
    ),
    Post(
        username: "Alisher",
        userImage: "assets/images/muc.jpeg",
        postImage: "assets/images/mud.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."
    ),
    Post(
        username: "Alisher",
        userImage: "assets/images/muc.jpeg",
        postImage: "assets/images/mue.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."
    ),
    Post(
        username: "Alisher",
        userImage: "assets/images/mud.jpeg",
        postImage: "assets/images/mue.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."
    ),
    Post(
        username: "Alisher",
        userImage: "assets/images/muc.jpeg",
        postImage: "assets/images/mud.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."
    ),
    Post(
        username: "Alisher",
        userImage: "assets/images/muc.jpeg",
        postImage: "assets/images/mue.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              //#stories & watch all
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Stories",style: TextStyle(color: Colors.white,fontSize: 14),),
                    Text("Watch All",style: TextStyle(color: Colors.white,fontSize: 14),),
                  ],
                ),
              ),
              //#Storylist horizontal
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _listStory.map((story) {
                    return _itemOfStory(story);
                  }).toList(),
                ),
              ),
              //#postList vertical
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _listPost.length,
                    itemBuilder: (ctx,i){
                      return _itemOfPost(_listPost[i]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _itemOfStory(Story story){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(width: 3,color: Color(0xFF8e44ad))
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(story.name,style: TextStyle(color: Colors.white),)
      ],
    );
  }

  Widget _itemOfPost(Post post){
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          //#profile & title name
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                //#profile & title name
                Row(
                  children:<Widget> [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: AssetImage(post.userImage),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(post.username,style: TextStyle(color: Colors.white),)
                  ],
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.more_horiz,color: Colors.white,)
                )
              ],
            ),
          ),
          //#Post image
          FadeInImage(
            image: AssetImage(post.postImage),
              placeholder:AssetImage("assets/images/placeholder.png"),
            width: MediaQuery.of(context).size.width,
          ),
          //# other bellow icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.favorite_border,color: Colors.red,) ),
                  IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.comment,color: Colors.grey,) ),
                  IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.send_outlined,color: Colors.grey,) ),

                ],
              ),
              IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.bookmark_border,color: Colors.grey,) ),
            ],
          ),
          // #tags
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 14),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Liked by   ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                    )
                  ),
                  TextSpan(
                      text: 'Abbos ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )
                  ),
                  TextSpan(
                      text: 'Bobur ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )
                  ),
                  TextSpan(
                      text: 'Muhammad Ziyo ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )
                  ),
                  TextSpan(
                      text: 'and ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white
                      )
                  ),
                  TextSpan(
                      text: '1234 Others ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )
                  ),
                ]
              ),
            ),
          ),
          //#Captions
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: post.username,
                    style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.white)
                  ),
                  TextSpan(
                    text: "  ${post.caption}",
                    style: TextStyle(color: Colors.white)
                  )
                ]
              ),
            ),
          ),
          //#post Date
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14),
            alignment: Alignment.topLeft,
            child: Text('March 27, 2023',style: TextStyle(
              color: Colors.grey
            ),),
          )

        ],
      ),
    );
  }
}

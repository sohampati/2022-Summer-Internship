import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?cs=srgb&dl=pexels-daria-shevtsova-704569.jpg&fm=jpg"),
                fit: BoxFit.cover,

                ),
            ),
          ),
          Positioned(
            top: 40,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(.4),
     child: IconButton(icon: Icon(Icons.close, color: Colors.white,),onPressed: (){

     }),),
    ),
          buildAvatar(85, "https://petapixel.com/assets/uploads/2022/01/VAI_01-22_People_Panther_JPG_white_hor_007-800x460.jpg"),
          buildAvatar(65, "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),

          buildAvatar(45, "https://media.istockphoto.com/photos/headshot-portrait-of-smiling-ethnic-businessman-in-office-picture-id1300512215?k=20&m=1300512215&s=612x612&w=0&h=enNAE_K3bhFRebyOAPFdJtX9ru7Fo4S9BZUZZQD3v20="),
          Positioned(
              top: MediaQuery.of(context).size.height * .40,
              left: 25,
              child: Container(

            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(20)

            ),
                alignment: Alignment.center,
                child: Text("4.5",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),),
          )
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*.45,
              left: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('164 Reviews, 10 friends',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,

                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Brunch n' Eats",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                          )
                      ),

                    ],
                  ),

          ),
              )
          ),
          Column(

          )


        ],
      ),
    );
  }
  Positioned buildAvatar(double LeftPosition, String url){
    return Positioned

      (
        top: MediaQuery.of(context).size.height *.4,
        left: LeftPosition,
        child: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Colors.white),

      ),
    )
    );
  }
  Positioned buildCategory(double height, String url){
    return Positioned(

        child: Container(
          child: Column(
            children: [
              Row(

                children: [

                ],
              )
            ],
          ),

        )


    );
  }
}

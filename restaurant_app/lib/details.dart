import 'package:flutter/material.dart';
import 'package:restaurant_app/main.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage( ))
          );

        },
          backgroundColor: Colors.orange,

          label: Text("Book Now",

      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 16,
      ),)),
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
                              color: Colors.white
                            ,
                          )
                      ),

                    ],
                  ),

          ),
              )
          ),

          Positioned(
            bottom: 0.0,
            child: Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    buildItemRow(context),
                    buildItemRow(context),
                    buildItemRow(context),
                  ],
                ),
              ),
            ),
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
Container buildItemRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/3676531/pexels-photo-3676531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Vegetables ',style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),),
              SizedBox(height: 10,),

              Container(
                width: MediaQuery.of(context).size.width-150,
                child: Text(
                  'Consume lots of vegetables per day.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
}





  }


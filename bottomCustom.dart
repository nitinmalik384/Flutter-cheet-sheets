import "package:flutter/material.dart";
class CustomBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              defaultBottomSheet(context);

            }, child: Text("Default Bottom Sheet")),
            ElevatedButton(onPressed: (){
    fullScreenBottomSheet(context);

    }, child: Text("Full Screen Bottom Sheet")),
            ElevatedButton(onPressed: (){
              ScrollableBottomSheet(context);

            }, child: Text("Scrollable Bottom Sheet"))
          ],
        ),
      ),

    );
  }
  defaultBottomSheet(context)
  {
    showModalBottomSheet(context: context, builder: (build){
      return  Container(
        decoration: BoxDecoration(

          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Colors.white,
        ),

        padding: EdgeInsets.all(16),
        child: ListView(


          children: [


            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 80
              ,
              backgroundImage:  NetworkImage("https://cdn.ndtv.com/tech/images/gadgets/pikachu_hi_pokemon.jpg?output-quality=80&output-format=webp"),
            ),
            SizedBox(height: 50,),

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                " Excepteur sint"
                " occaecat cupidatat"
                " non proident, sunt in culpa qui officia deserun"
                "t mollit anim id est laborum."),
            SizedBox(height: 50,),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                " Excepteur sint"
                " occaecat cupidatat"
                " non proident, sunt in culpa qui officia deserun"
                "t mollit anim id est laborum."),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                " Excepteur sint"
                " occaecat cupidatat"
                " non proident, sunt in culpa qui officia deserun"
                "t mollit anim id est laborum."),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                " Excepteur sint"
                " occaecat cupidatat"
                " non proident, sunt in culpa qui officia deserun"
                "t mollit anim id est laborum."),
            ElevatedButton(onPressed: (){}, child: Text("Close"))
          ],),
      );
    });
  } fullScreenBottomSheet(context)
  {
    showModalBottomSheet(context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent
        ,builder:(context){
          return Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    color: Colors.white,
                  ),

                  padding: EdgeInsets.all(16),
                  child: ListView(


                    children: [


                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 80
                        ,
                        backgroundImage:  NetworkImage("https://cdn.ndtv.com/tech/images/gadgets/pikachu_hi_pokemon.jpg?output-quality=80&output-format=webp"),
                      ),
                      SizedBox(height: 50,),

                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                          " Excepteur sint"
                          " occaecat cupidatat"
                          " non proident, sunt in culpa qui officia deserun"
                          "t mollit anim id est laborum."),
                      SizedBox(height: 50,),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                          " Excepteur sint"
                          " occaecat cupidatat"
                          " non proident, sunt in culpa qui officia deserun"
                          "t mollit anim id est laborum."),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                          " Excepteur sint"
                          " occaecat cupidatat"
                          " non proident, sunt in culpa qui officia deserun"
                          "t mollit anim id est laborum."),
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                          " Excepteur sint"
                          " occaecat cupidatat"
                          " non proident, sunt in culpa qui officia deserun"
                          "t mollit anim id est laborum."),
                      ElevatedButton(onPressed: (){}, child: Text("Close"))
                    ],),
                );

        }  );
  }



  ScrollableBottomSheet(context)
  {
    showModalBottomSheet(context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent
        ,builder:(context){
          return GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            behavior: HitTestBehavior.opaque,
            child: DraggableScrollableSheet(
                initialChildSize: 0.6,
                maxChildSize: 0.9,
                builder: (build,controller){
                  return Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      color: Colors.white,
                    ),

                    padding: EdgeInsets.all(16),
                    child: ListView(
                      controller: controller,

                      children: [


                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 80
                          ,
                          backgroundImage:  NetworkImage("https://cdn.ndtv.com/tech/images/gadgets/pikachu_hi_pokemon.jpg?output-quality=80&output-format=webp"),
                        ),
                        SizedBox(height: 50,),

                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                            " Excepteur sint"
                            " occaecat cupidatat"
                            " non proident, sunt in culpa qui officia deserun"
                            "t mollit anim id est laborum."),
                        SizedBox(height: 50,),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                            " Excepteur sint"
                            " occaecat cupidatat"
                            " non proident, sunt in culpa qui officia deserun"
                            "t mollit anim id est laborum."),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                            " Excepteur sint"
                            " occaecat cupidatat"
                            " non proident, sunt in culpa qui officia deserun"
                            "t mollit anim id est laborum."),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                            " Excepteur sint"
                            " occaecat cupidatat"
                            " non proident, sunt in culpa qui officia deserun"
                            "t mollit anim id est laborum."),
                        ElevatedButton(onPressed: (){}, child: Text("Close"))
                      ],),
                  );
                }
            ),
          );

        }  );

  }
}

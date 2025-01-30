import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SafeHome extends StatelessWidget {
  showModelSafeHome(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height / 1.4,
          decoration: BoxDecoration(
              color: Color(0xFFDA798E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
             topRight: Radius.circular(20),
            )
          ),
          );
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showModelSafeHome(context) ,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 220,
          width: MediaQuery.of(context).size.width*0.7,
          decoration: BoxDecoration(

          ),
          child: Row(
            children: [
              Expanded(child: Column(
                children: [
                  ListTile(
                    title: Text("Send Location"),
                    subtitle: Text("Share Location"),
                  )
                ],
              )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/route.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}

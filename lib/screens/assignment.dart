import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 200,
              width: 1000,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 65,),
                    Text('Make Learner Diary of Biology', style: TextStyle(fontSize: 14),),
                    SizedBox(height: 10,),
                    Text('Given By: Mahesh Sir', style: TextStyle(fontSize: 14),),
                    SizedBox(height: 10,),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(child: Text('Pending...', style: TextStyle(color: Colors.white, fontSize: 14),), onPressed: (){}, ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 200,
              width: 1000,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 65,),
                    Text('Make a Summary of First Chapter Motion', style: TextStyle(fontSize: 14),),
                    SizedBox(height: 10,),
                    Text('Given By: Nidhi Mam', style: TextStyle(fontSize: 14),),
                    SizedBox(height: 10,),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(child: Text('Completed', style: TextStyle(color: Colors.white, fontSize: 14),), onPressed: (){}, ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 200,
              width: 1000,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 65,),
                    Text('Make a project on experience of your difficult decision', style: TextStyle(fontSize: 14),),
                    SizedBox(height: 10,),
                    Text('Given By: Divya Mam', style: TextStyle(fontSize: 14),),
                    SizedBox(height: 10,),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(child: Text('Completed', style: TextStyle(color: Colors.white, fontSize: 14),), onPressed: (){}, ),
                    )
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );;
  }
}
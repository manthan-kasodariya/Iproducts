import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('Recommended payment option',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueGrey,
              child: Column(
                children: [
                  RadioListTile(
                      title: Text('paytm(wallet,Postpaid)', style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      value: 'paytm', groupValue: 'groupvalue', onChanged: (value){
                        print('value');
                  }
                  ),

                  RadioListTile(
                      title: Text('cash on delivery',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      value: 'cash on delivery', groupValue: 'groupValue', onChanged:(value){
                    print(value);
                  })
                ],
              ),
            ),
            Text('other payment option',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueGrey,
              child: Column(
                children: [
                  RadioListTile(
                      title: Text('google pay',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      value: 'paytm', groupValue: 'groupvalue', onChanged: (value){
                    print('value');
                  }
                  ),


                  RadioListTile(
                      title: Text('bharat pay',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      value: 'paytm', groupValue: 'groupvalue', onChanged: (value){
                    print('value');
                  }
                  ),

                  RadioListTile(
                      title: Text('cash on delivery',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      value: 'cash on delivery', groupValue: 'groupValue', onChanged:(value){
                    print(value);
                  })
                ],
              ),
            ),
ElevatedButton(
    style: ElevatedButton.styleFrom(
      fixedSize: Size(MediaQuery.of(context).size.width,50),
      primary: Colors.white
    ),
    onPressed: (){}, child: Text('Place order',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
)
          ],
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';

class CSwitchButton extends StatefulWidget {  
  @override  
  SwitchClass createState() => new SwitchClass();  
}  
  
class SwitchClass extends State {  
  bool isSwitched = false;  
    
  
  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
      });  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
      });   
    }  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Transform.scale(  
        scale: 1.5,  
        child: Switch(  

          onChanged: toggleSwitch,  
          value: isSwitched,  
          activeColor: Colors.black,  
          activeTrackColor: Colors.grey[300],  
          inactiveThumbColor: Colors.grey[200],  
          inactiveTrackColor: Colors.grey[300],  
        )  
      );  
  }  
}  
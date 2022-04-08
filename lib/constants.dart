import 'package:flutter/material.dart';


const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

class KSignButton extends StatelessWidget {
  KSignButton({this.color, this.ButtonText, this.tagText,this.onpressed});
  final Color color;
  final String ButtonText;
  final String tagText;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Material(
            color: color,
            borderRadius: BorderRadius.circular(30.0),
            elevation: 5.0,
            child: Hero(
              tag: tagText,
              child: MaterialButton(
                onPressed: onpressed,
                minWidth: 200.0,
                height: 42.0,
                child: Text(
                  ButtonText,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

const kIntroText = TextStyle(
  fontSize: 30.0,
  color: Colors.lightBlueAccent,
);

const kTextFieldDecoration = InputDecoration(
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);




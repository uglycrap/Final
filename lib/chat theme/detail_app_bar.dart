import 'package:flutter/material.dart';

class DetailAppbBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 40, 10, 0), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
             'Back',
             style: TextStyle(
               fontSize: 16,color: Colors.white.withOpacity(0.5)),
           )),
          TextButton(
              onPressed: (){},
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 16,color: Colors.white.withOpacity(0.5)
              )),
          )],
      ),
    );
  }
}

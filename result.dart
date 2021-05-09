import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int b;
  final Function c;
  Result(this.b, this.c);
  String get toPrint {
    if (b < 500) {
      if (b > 200) {
        if (b == 201 || b == 205) {
          return 'Even though you have been vaccinated, its compulsary to wear masks and do the sanitization properly as your age people might affect a lot to this virus coz of less immunity, breathing problems.';
        } else {
          return 'Firstly, Congratulations for getting vaccinated. But, we strictly advise u to take some necessary measures to protect u from COVID as there chances to get infected again even after vaccination.';
        }
      } else {
        if (b > 100) {
          if (b == 101 || b == 105) {
            return "Unfortunately, vaccine is not recommended for your age people. But, Don't worry, it would be all good if you eat properly and take rest.";
          } else
            return "Don't forget to take the second vaccine on time.Take food properly and it is strictly advised to take rest as much as possible.Try to limit your househlod cores";
        } else {
          if (b == 1 || b == 5) {
            return "Stay Home Stay Safe and be strong.";
          } else {
            return "We strongly recomend you to take the vaccine as early as possible.";
          }
        }
      }
    } else {
      if (b > 700) {
        if (b == 701 || b == 705) {
          return 'Even though you have been vaccinated, its compulsary to wear masks and do the sanitization properly as your age people might affect a lot to this virus coz of less immunity, breathing problems.';
        } else {
          return 'Firstly, Congratulations for getting vaccinated. But, we strictly advise u to take some necessary measures to protect u from COVID as there chances to get infected again even after vaccination.';
        }
      } else {
        if (b > 600) {
          if (b == 601 || b == 605) {
            return "Unfortunately, vaccine is not recommended for your age people. But, Don't worry, it would be all good if you eat properly and take rest.";
          } else {
            return "Don't forget to take the second vaccine on time.Take food properly and it is strictly advised to take rest as much as possible. Reduce your work stress atleast for 3 days.";
          }
        } else {
          if (b == 501 || b == 505)
            return "Stay Home Stay Safe and be strong.";
          else
            return "We strongly recomend you to take the vaccine as early as possible.";
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'ADVICE',
            style: TextStyle(
                fontSize: 35,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          Text(
            toPrint,
            style: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
              child: Text('Reset'), textColor: Colors.blue, onPressed: c),
        ],
      ),
    );
  }
}

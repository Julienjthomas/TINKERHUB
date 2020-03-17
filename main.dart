/*Write a dart class for tech learners and mentors. Should have following methods |addStacks() : Add a particular stack of interest/expertise 
|setMentorOrLearner() : Set whether the participant is learner or mentor

|setAvailableTime() : if person is mentor set available time |getMentor() : Takes stack and time as params and finds available mentors. */

import 'dart:io';
class LearnerOrMentor{

  String interest,mentorOrLearner,name,availableTime;
  int id,limit=0,time;
  var type;
  var stackList = new List(100),nameList=new List(100),atlist=new List(100),mOrL = new List(100);

  void address(){
    print("Enter the name of person:");
    name = stdin.readLineSync();
    limit++;
    this.nameList[limit]=name;
    this.addStacks();
    this.setMentorOrLearner();
    this.setAvailableTime();
  }

  void addStacks(){ 
    print("EXPERTISED OR NEED HELP IN---WHICH SUBJECT??");
    interest = stdin.readLineSync();
    this.stackList[limit]=interest;
  }
  void setMentorOrLearner(){
  print("\n\n Mentor/Learner");
  print(" Enter M for Mentor \n Enter L Learner\n");
  print("Enter the input:");
  type = stdin.readLineSync();
  this.mOrL[limit]=type;
 }
 void setAvailableTime(){
   if (type == 'M'){
     print("Enter the available time for this mentor (Hours):");
     time=int.parse(stdin.readLineSync());
     this.atlist[limit]=time;
   }
   else{
     atlist[limit]=0;
   }
 }
}
void main() {

  LearnerOrMentor person = new LearnerOrMentor();
  String n,stack;
  int i,time;
   void getMentor(var x,var y,var z,int m){
   if (m==0)
   { 
     print("SORRY No one is registerd");
   }
   else{

    for (i=0;i<=m;i++){
      if (y[i]=='M'){
        stack=x[i];
        time=z[i];
        if(person.atlist[i]==time)
        {
          print(person.nameList[i]);
        }
      }
      


      }}}
  while(true)
  {
    
    print(" PRESS\t\n1-----ADD MENTORS\n2-----CHECK MENTORS IF AVAILABLE??");
    n = stdin.readLineSync();
    if (n=='1')
    {
      person.address();
    }
    else if (n=='2'){
      print("WAIT!! WE ARE READY TO HELP YOU");
      print(person.mOrL[1]);
      getMentor(person.stackList,person.mOrL,person.atlist,person.limit);
    }
    else{
      print("Invalid Option");
    }}}
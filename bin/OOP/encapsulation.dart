///encapsulation
///public/private
///set-write and get-read
class bankAccount {
  String accountNo;
  String holderName;
  ///private
  double _currentBalance = 00.00;
  bankAccount (this.accountNo, this.holderName);

  ///read-get
  ///type1
 /*
 double getCurrentBalance(){
   return _currentBalance;
 }
  */
  ///type2
  /*
  double get getCurrentBalance {
    return _currentBalance;
  }
  */
  ///type3
  double get getCurrentBalance => _currentBalance;


 ///set-write
  ///type1
  /*
  void setnewtBalance (double newBalance){
   if(newBalance <=0){
     return;
   }
   _currentBalance = newBalance;
}
}
  */

  ///type2
  void set setnewBalance (double newBalance){
    if(newBalance<=0){
      return;
    }
    _currentBalance = newBalance;
  }

  }

void main (){
  bankAccount hamimbank = new bankAccount("1254-5465-5444", "hamimLeon");
  print(hamimbank.accountNo);
  print(hamimbank.holderName);
  //print(hamimbank.getCurrentBalance());
  print(hamimbank.getCurrentBalance);
  hamimbank.setnewBalance = 12.56;
  print(hamimbank._currentBalance);

}
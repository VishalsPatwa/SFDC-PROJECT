public class AccountInsertRecord 
{
 public void Record()
 {
     account acc = new account();
     acc.AnnualRevenue=1111111;
     acc.Name='Simran2';
     acc.Active__c='true';
    system.debug('record detail...'+acc);
     insert acc;
      if(acc.Id !=null)
    {
         system.debug('account id is..'+acc.id);
        contact con =new contact();
        con.LastName='patwa2';
        con.AccountId=acc.Id;
        system.debug('contact detail......'+con);
        insert con;
        if(con.id!=null)
        {
            system.debug('contact id is..........'+con.Id);
        }
    }
 }
   public void updateRecord()
   {
       list<account> a = new list<account>();
       a=[select id, name from account];
       list<account> b=new list<account>();
       for(account c:a)
       {
           c.Name='Anurag';
           b.add(c);
       }
       update b;
   }
}
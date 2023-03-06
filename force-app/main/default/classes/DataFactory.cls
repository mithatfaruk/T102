@isTest
public class DataFactory {
    
    public static account accountolustur(){
        account acc = new account();
        acc.Name='Test';
        acc.Rating='Hot';
        return acc;
    }
    
    public static contact contactolustur(){
        contact cnt = new contact();
        cnt.FirstName= 'Test Contact' ;
        cnt.LastName='Last Name';
        return cnt;
    }
    
    public static opportunity oppolustur(){
    opportunity opp= new opportunity();
    opp.Name='Opp Test';
    opp.CloseDate=system.today()+10;
    opp.StageName='Prospecting';
    return opp;
        }
}
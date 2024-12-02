public class OpportunityTriggerHelper{
    
    public static void method1(Map<Id, Opportunity> oppsMap){ 
        List<Opportunity> opps = [SELECT Id, AccountId FROM Opportunity WHERE Id IN: oppsMap.keySet()];
        Account acc = [SELECT Id, Name FROM Account WHERE Id =: opps.get(0).AccountId WITH SECURITY_ENFORCED];
        TriggerHandler.bypass('AccountTriggerHandler');
        acc.Name = 'No Trigger';
        update acc; //AccountTriggerHandler won't be triggered

        TriggerHandler.clearBypass('AccountTriggerHandler');

        acc.Name = 'With Trigger';
        update acc; //AccountTriggerHandler will be triggered
    }      

}
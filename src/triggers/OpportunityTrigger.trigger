trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    if(Run_Triggers__mdt.getInstance('Opportunity_Trigger')?.Active__c){
        new OpportunityTriggerHandler().run();
    }   
}
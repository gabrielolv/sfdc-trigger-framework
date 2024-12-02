trigger AccountTrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    if(Run_Triggers__mdt.getInstance('Account_Trigger')?.Active__c){
        new AccountTriggerHandler().run();
    }   
}
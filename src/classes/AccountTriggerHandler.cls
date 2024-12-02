public class AccountTriggerHandler Extends TriggerHandler{
	
    private List<Account> listNewAcc;
    private List<Account> listOldAcc;
    private Map<Id, Account> mapNewAcc;
    private Map<Id, Account> mapOldAcc;

    public AccountTriggerHandler() {
        this.listNewAcc	= (List<Account>) Trigger.new;
        this.listOldAcc	= Trigger.old != null ? (List<Account>) Trigger.old : new List<Account>();
        this.mapNewAcc	= (Map<Id, Account>) Trigger.newMap;
        this.mapOldAcc	= Trigger.oldMap != null ? (Map<Id, Account>) Trigger.oldMap : new Map<Id, Account>();
    }
    
    public override void beforeInsert(){}
    public override void beforeUpdate(){}
    public override void beforeDelete(){}
    public override void afterInsert(){}
    public override void afterUpdate(){}
    public override void afterDelete(){}
    public override void afterUndelete(){}
        
}
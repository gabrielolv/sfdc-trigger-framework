public class OpportunityTriggerHandler Extends TriggerHandler{
	
    private List<Opportunity> listNewOpps;
    private List<Opportunity> listOldOpps;
    private Map<Id, Opportunity> mapNewOpps;
    private Map<Id, Opportunity> mapOldOpps;
    
    public OpportunityTriggerHandler() {
        this.listNewOpps	= (List<Opportunity>) Trigger.new;
        this.listOldOpps	= Trigger.old != null ? (List<Opportunity>) Trigger.old : new List<Opportunity>();
        this.mapNewOpps		= (Map<Id, Opportunity>) Trigger.newMap;
        this.mapOldOpps		= Trigger.oldMap != null ? (Map<Id, Opportunity>) Trigger.oldMap : new Map<Id, Opportunity>();
    }
    
    public override void beforeInsert(){
        
    }
    public override void beforeUpdate(){
        
    }
    public override void beforeDelete(){}
    public override void afterInsert(){
        OpportunityTriggerHelper.method1(this.mapNewOpps);
    }
    public override void afterUpdate(){}
    public override void afterDelete(){}
    public override void afterUndelete(){}
        
}
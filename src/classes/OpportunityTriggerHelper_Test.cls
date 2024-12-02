@isTest
public class OpportunityTriggerHelper_Test {
    @testSetup
    static void setup(){
        Opportunity testOpp = MDF_OpportunityFactory.start()
            .withCloseDateToday()
            .withPricingInformation()
            .withStageQualification()
            .create();
    }

    @isTest
    static void testMethod1(){
        Test.startTest();
        List<Opportunity> newOpp = [SELECT Id, Name FROM Opportunity WHERE Name = 'Test Opportunity' LIMIT 1];
        System.assertEquals(false, newOpp.isEmpty(), 'Opportunity was not created!');
        Test.stopTest();
        
    }

    @isTest
    static void testMethod2(){
        Test.startTest();
        List<Opportunity> newOpp = [SELECT Id, Name FROM Opportunity WHERE Name = 'Test Opportunity' LIMIT 1];
        newOpp[0].Name = 'Test Method 2';
        update newOpp;
        List<Opportunity> oppUpdated = [SELECT Id, Name FROM Opportunity WHERE Name = 'Test Method 2' LIMIT 1];
        System.assertEquals(false, oppUpdated.isEmpty(), 'Opportunity was not updated!');
        Test.stopTest();
        
    }

}
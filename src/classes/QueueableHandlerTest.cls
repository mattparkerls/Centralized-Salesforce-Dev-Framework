/**
* @author Scott Covert
* @date 6/17/2016
* @description This class provides unit tests for the QueueableHandler test class
*/
@isTest (oninstall=true seealldata=false)
public with sharing class QueueableHandlerTest { 

	/** 
	* @author Scott Covert
	* @date 6/17/2016
	* @description Tests the QueueableHandler methods
	*/
	@isTest (oninstall=true seealldata=false)
	public static void testQueueableHandler() {	        
        
	if (!TestVerificationService.ShouldExecute('QueueableHandlerTest.testQueueableHandler')) return;

        // Test Async Request Queue is functional
        QueueableHandler.startCalloutJob(QueueableHandler.CALLOUT_TOKEN, new CalloutRequest__c(Endpoint__c = CalloutHandler.ENDPOINT + '/test', Method__c = CalloutHandler.GET_METHOD, Timeout__c = CalloutHandler.DEFAULT_CALLOUT_TIME));
		list<AsyncRequest__c> asyncRequests = [SELECT Id FROM AsyncRequest__c WHERE Aborted__c = false];
		System.assertNotEquals(asyncRequests.size(),0,'Error in QueueableHandler.startJob: Async Request record(s) not being properly inserted to the database/queue');		

	}

}
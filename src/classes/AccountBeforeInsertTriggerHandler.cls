/**
* @author Scott Covert
* @date 11/9/2014
* @description Account Trigger Handler for Before Insert Trigger Context
* @see TriggerHandlerBase
*/
public class AccountBeforeInsertTriggerHandler extends TriggerHandlerBase {
	
	/**
	* @author Scott Covert
	* @date 11/9/2014
	* @description Main Entry point for trigger handling
	* @param TriggerParameters Contains the trigger parameters
	*/
	public override void mainEntry(TriggerParameters tp) {
		DiagnosticsInstrumentation.Push('AccountBeforeInsertTriggerHandler.mainEntry');
		DiagnosticsInstrumentation.Pop();
	}
}
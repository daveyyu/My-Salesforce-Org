//Test GIT
public with sharing class SampleClass{
	public Id accId {get;set;}
	
	public List<Account> accList = new List<Account>();
	public List<Contact> tempList {get;set;}
 
	public Boolean render{get;set;}
    public String disp{get;set;}
    public Boolean gotolist{get;set;}
	
	public Integer size{get;set;}
	
	public SampleClass(ApexPages.StandardController controller) {
		accId = ApexPages.currentPage().getParameters().get('Id');
		if(accId != null)
			tempList = [Select Id, Name, Title, Email from Contact where AccountId =: accId ORDER by CreatedDate DESC];
		
		if(tempList.size() > 0)
			size = tempList.size();
		
    	if (size>0 && size<=5) {
	        render = true;
	        disp = '';
	        gotolist = false;
	    } else if (size>5) {
	        render = true;
	        disp = '';
	        gotolist = true;
	    } else {
	        render = false;
	        disp = 'No records to display';
	        gotolist = false;
	    }
		
	}   
    
}
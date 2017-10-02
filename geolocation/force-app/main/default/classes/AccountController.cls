public with sharing class AccountController {
    @AuraEnabled
	public static List<Account> findAll(){
	return [select id, name, Location__Latitude__s, Location__Longitude__s from Account where Location__Latitude__s!=null and Location__Longitude__s!=null
	LIMIT 50];
	}
}

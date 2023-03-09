public with sharing class AccountQueries {

    public static List<Account> queryByIds(Set<Id> accIds) {
        List<Account> accList = [
            SELECT Id, CPF__c, CNPJ__c, RecordType.DeveloperName
            FROM Account
            WHERE Id IN :accIds
        ];
        return accList;
    }
}
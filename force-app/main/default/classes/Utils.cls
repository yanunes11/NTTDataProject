public with sharing class Utils {

    public static void validarCNPJouCPF(List<Account> accListNew) {

        Id recordTypeIdParceiro = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('Parceiro').getRecordTypeId();
        Id recordTypeIdConsumidor = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('Consumidor_Final').getRecordTypeId();

        for (Account acc : accListNew) {
            if (acc.RecordTypeId == recordTypeIdConsumidor) {
                if (validarCPF(acc.CPF__c)) acc.CPF__c.addError('CPF Incorreto');
            } else if (acc.RecordTypeId == recordTypeIdParceiro) {
                if (validarCNPJ(acc.CNPJ__c)) acc.CNPJ__c.addError('CNPJ Incorreto');
            }
        }
    }
    
    public static Boolean validarCPF(String cpf) {
        //Não é necessário criar a rotina de validação do CNPJ ou CPF
        return false;
    }
    
    public static Boolean validarCNPJ(String cnpj) {
        //Não é necessário criar a rotina de validação do CNPJ ou CPF
        return false;
    }

}
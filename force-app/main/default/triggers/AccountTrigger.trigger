trigger AccountTrigger on Account (before insert, before update) {

    if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            Utils.ValidarCNPJouCPF(Trigger.new);
        }
        if (Trigger.isUpdate) {
            Utils.ValidarCNPJouCPF(Trigger.new);
        }
    }
}
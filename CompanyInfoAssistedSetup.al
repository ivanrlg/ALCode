codeunit 50110 CompanyInfoAssistedSetup
{
   [EventSubscriber(ObjectType::Table, 1808, 'OnRegisterAssistedSetup', '', false, false)]
   
   local procedure "AggregatedAssistedSetup.OnRegisterAssistedSetup"(var TempAggregatedAssistedSetup : Record 1808 TEMPORARY)
   var CompanyInformation : Record 79;
    begin
         TempAggregatedAssistedSetup.AddExtensionAssistedSetup(PAGE::CompanyInfoWizard, 'Setup Company Information', TRUE, CompanyInformation.RECORDID, GetCompanyInformationSetupStatus(TempAggregatedAssistedSetup), '');
    end;
    local procedure GetCompanyInformationSetupStatus(AggregatedAssistedSetup : Record "Aggregated Assisted Setup") : Integer
    var CompanyInformation : Record "Company Information";
    begin 
        WITH AggregatedAssistedSetup DO BEGIN
            IF CompanyInformation.GET THEN 
                IF (CompanyInformation.Name = '') OR (CompanyInformation."E-Mail" = '') THEN
                     Status := Status::"Not Completed"
                ELSE Status := Status::Completed
            ELSE Status := Status::"Not Completed";
            EXIT(Status);
            
        END;
    end;
    [EventSubscriber(objecttype::Table, 79, 'OnAfterModifyEvent', '',false,false)]
    local procedure CompanyInfoSetupCompleted(rec :Record "Company Information")
    var
        CompanyAssistedSetup: Record "Assisted Setup";
    begin
        if CompanyAssistedSetup.get(50110) then begin
            IF (rec.Name = '') OR (rec."E-Mail" = '') THEN
                CompanyAssistedSetup.Status := CompanyAssistedSetup.Status::"Not Completed"
            ELSE
                CompanyAssistedSetup.Status := CompanyAssistedSetup.Status::Completed;
            CompanyAssistedSetup.Modify;
        end;
    end;
}   
codeunit 50111 NotificationCompanyInfo
{
    procedure ShowCompanyInfoWizard(TheNotification : Notification)
    begin
        Page.Run(Page::CompanyInfoWizard);
    end;
    [EventSubscriber(ObjectType::Page, 42, 'OnOpenPageEvent', '', false, false)] 
    local procedure CheckCompanyInfo_OnOpenSalesOrder(var Rec : Record 36)
    var
         CompanyInformation : Record 79; 
         TheNotification : Notification;
    begin
    
    end;
}
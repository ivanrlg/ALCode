codeunit 50101 CustomerCode
{
        
    var
        myInt : Integer;

    [EventSubscriber(ObjectType::Table,18,'OnAfterInsertEvent','',false,false)]
    local procedure OnAfterInsertCustomer(Rec: Record Customer)
    begin
        Message(GetCustomerMessage(Rec));
    end;
    
    local procedure GetCustomerMessage(Customer : Record Customer) ReturnValue : Text
    var
            MyVariable: Integer;
    begin
        ReturnValue := StrSubstNo('Customer %1 has been just created.',Customer.Name);
    end;
}

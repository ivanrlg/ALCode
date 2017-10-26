codeunit 50149 ShowDate {
    trigger OnRun() 
        var
        Day:Date;
    begin
        Day := today();
        message('Today is %1',Day);
    end;    
}
tableextension 50100 CustomerBookExt extends Customer
{
    fields
    {
       field(50100;MyFavoriteBookNo;Code[10])
       {
           TableRelation = Book;
           CaptionML = ENU='My favorite book No.';
        
       }
    }
    
    var
        myInt : Integer;
    trigger OnAfterInsert()begin
        rec.MyFavoriteBookNo := 'ABC102';
        Message('Greetings from the table extension.')
    end;

}
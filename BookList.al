page 50101 BookList
{
    PageType = List;
    SourceTable = Book;
    CaptionML = ENU='Book List';
    CardPageId = 50100;
    Editable = false;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(No;No) {}
                field(Title;Title){}
                field(Author;Author){}
            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}
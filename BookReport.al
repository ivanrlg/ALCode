report 50100 BookReport
{
    DefaultLayout = Word;
    
    WordLayout = 'Default.docx';
    
    dataset
    {
        dataitem(Book; Book)
        {
            column(No;No) {}
            column(Title;Title){}
            column(Author;Author){}
            column(PageCount;PageCount){}
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(General)
                {
                    field(Author;Book.Author)
                    {
                    }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                }
            }
        }
    }
    
    var
        myInt : Integer;
}
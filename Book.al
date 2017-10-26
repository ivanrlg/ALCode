table 50100 Book
{
    LookupPageId = 50101;
    fields
    {
        field(1;No;Code[10])
        {
            CaptionML = ENU='Number';
        }
        field(2;Title;Text[50])
        {
            CaptionML = ENU='New Title More changes Title';
        }
        field(3;Author;Text[80])
        {
            CaptionML = ENU='Author';
        }
        field(4;HardCover;Boolean)
        {
            CaptionML = ENU='Hard Cover';
        }
        field(5;PageCount;Integer)
        {
            CaptionML = ENU='Page Count';
        }
    }

    keys
    {
        key(PK;No)
        {
            Clustered = true;
        }
    }
}

pageextension 50101 ItemCardExtension extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addfirst(Item)
        {
            action(DownloadPicture)
                {
                    CaptionML = ENU='Download Picture';
                    Image = Picture;
                    trigger OnAction()
                    var
                        Download: Codeunit HttpDownloadManagement;
                        TempBlob: Record TempBlob temporary;
                        Stream: InStream;
                    begin
                        Download.DownloadPicture('http://vjeko.com/demo/bicycle.jpg', TempBlob);
                        TempBlob.Blob.CreateInStream(Stream);
                        Rec.Picture.ImportStream(Stream, 'Default image');
                        CurrPage.Update(true);
                    end;
                }
        }
    }
    
    var
        myInt : Integer;
}
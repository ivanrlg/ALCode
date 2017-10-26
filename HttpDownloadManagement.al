codeunit 50102 HttpDownloadManagement 
{
    procedure DownloadPicture(Url: Text; var TempBlob: Record TempBlob temporary);
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        StreamIn: InStream;
        StreamOut: OutStream;
    begin
        Client.Get(Url, Response);
        Response.Content.ReadAs(StreamIn);
        TempBlob.Blob.CreateOutStream(StreamOut);
        CopyStream(StreamOut, StreamIn);
    end;

}
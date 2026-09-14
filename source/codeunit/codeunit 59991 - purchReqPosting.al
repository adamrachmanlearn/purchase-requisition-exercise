codeunit 59991 purchReqPosting
{
    trigger OnRun()
    begin

    end;

    procedure purchReqPost(documentNo: Code[20])
    var
        varPrHeader: Record purchReqHeader;
        varPrHeaderPosted: Record purchReqHeaderPosted;
        varPrLine: Record purchReqLine;
        varPrLinePosted: Record purchReqLinePosted;
    begin
        varPrHeader.SetRange("No.", documentNo);
        if varPrHeader.FindFirst() then begin
            varPrHeaderPosted.Init();
            varPrHeaderPosted.TransferFields(varPrHeader);
            varPrHeaderPosted.Insert();
            varPrLine.SetRange("Document No.", varPrHeader."No.");
            if varPrLine.FindFirst() then begin
                repeat
                    varPrLinePosted.Init();
                    varPrLinePosted.TransferFields(varPrLine);
                    varPrLinePosted.Insert();
                until varPrLine.Next() = 0;
            end;
        end;

        // another way to do it when the key already known
        // if varPrHeader.Get(documentNo) then
        // begin

        // end;
    end;
}
page 59995 purchReqCardPosted
{
    ApplicationArea = All;
    PageType = Card;
    SourceTable = purchReqHeaderPosted;

    layout
    {
        area(Content)
        {
            group("general")
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                    AssistEdit = true;

                    trigger OnAssistEdit()
                    var
                        currentNoSeries: Record "No. Series";
                    begin
                        if Page.RunModal(Page::"No. Series", currentNoSeries) = Action::LookupOK then
                            Rec."No." := currentNoSeries.Code
                    end;
                }
                field("Requestor No."; Rec."Requestor No.")
                {
                    ApplicationArea = all;
                }
                field("Requestor Name"; Rec."Requestor Name")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Document Date"; Rec."Document Date")
                {

                }
                field("Delivery Due Date"; Rec."Delivery Due Date")
                {

                }
                field("Location Code"; Rec."Location Code")
                {

                }
                field("Location Name"; Rec."Location Name")
                {

                }
                field("Perihal"; Rec."Notes")
                {

                }
                field("Status"; Rec."Status")
                {

                }
                field("Store Code"; Rec."Store Code")
                {

                }
                field("Divisi Code"; Rec."Divisi Code")
                {

                }
                field("Notes Rejected"; Rec."Notes Rejected")
                {

                }
            }

            part(purchReqSubForm; purchReqSubForm)
            {
                SubPageLink = "Document No." = field("No.");
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("approval")
            {
                Caption = 'Send Approval Request';
                Image = SendApprovalRequest;

                trigger OnAction()
                begin

                end;
            }
            action("print")
            {
                Caption = 'Print';
                Image = Print;

                trigger OnAction()
                var
                    varHeader: Record purchReqHeader;
                begin
                    CurrPage.SetSelectionFilter(varHeader);
                    Report.Run(Report::dummyReportLocal, true, true, varHeader);
                end;
            }
            action("copyDoc")
            {
                Caption = 'Copy Document';
                Image = Copy;

                trigger OnAction()
                begin

                end;
            }
            action("reject")
            {
                Caption = 'Reject Material Request';
                Image = Reject;

                trigger OnAction()
                begin

                end;
            }
            action("posting")
            {
                Caption = 'Posting';
                Image = Post;

                trigger OnAction()
                var
                    varPrPosting: Codeunit purchReqPosting;
                begin
                    varPrPosting.purchReqPost(Rec."No.");
                end;
            }
        }

        area(Promoted)
        {
            actionref("ref1"; "approval") { }
            actionref("ref2"; "print") { }
            actionref("ref3"; "copyDoc") { }
            actionref("ref4"; "reject") { }
        }
    }
}
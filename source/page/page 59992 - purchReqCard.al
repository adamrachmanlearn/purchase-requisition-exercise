page 59992 purchReqCard
{
    Caption = 'Purchase Requisition (Exercise)';
    PageType = Card;
    SourceTable = purchReqHeader;

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
                    ApplicationArea = all;
                }
                field("Delivery Due Date"; Rec."Delivery Due Date")
                {
                    ApplicationArea = all;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = all;
                }
                field("Location Name"; Rec."Location Name")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = all;
                    Caption = 'Perihal';
                }
                field("Status"; Rec."Status")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Store Code"; Rec."Store Code")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Divisi Code"; Rec."Divisi Code")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Notes Rejected"; Rec."Notes Rejected")
                {
                    ApplicationArea = all;
                }
            }

            part(purchReqSubForm; purchReqSubForm)
            {
                ApplicationArea = all;

                // SubPageLink = field on line = field on header
                // auto fill document no on subform
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
                ApplicationArea = all;

                trigger OnAction()
                begin

                end;
            }
            action("print")
            {
                Caption = 'Print';
                Image = Print;
                ApplicationArea = all;

                // trigger OnAction()
                // var
                //     varHeader: Record purchReqHeader;
                // begin
                //     CurrPage.SetSelectionFilter(varHeader);
                //     Report.Run(Report::dummyReportLocal, true, true, varHeader);
                // end;
                trigger OnAction()
                var
                    varHeader: Record purchReqHeader;
                begin
                    CurrPage.SetSelectionFilter(varHeader);
                    Report.Run(Report::purchReqReport, true, true, varHeader);
                end;
            }
            action("copyDoc")
            {
                Caption = 'Copy Document';
                Image = Copy;
                ApplicationArea = all;

                trigger OnAction()
                begin

                end;
            }
            action("reject")
            {
                Caption = 'Reject Material Request';
                Image = Reject;
                ApplicationArea = all;

                trigger OnAction()
                begin

                end;
            }
            action("posting")
            {
                Caption = 'Post';
                Image = Post;
                ApplicationArea = all;

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
            actionref("ref5"; "posting") { }
        }
    }
}
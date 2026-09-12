page 59992 purchReqExerciseCard
{
    Caption = 'Purchase Requisition (Exercise)';
    PageType = Card;
    ApplicationArea = All;
    // hide usage category
    // UsageCategory = Administration;
    SourceTable = purchReqExercise;

    layout
    {
        area(Content)
        {
            group("general")
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {

                }
                field("Requestor No."; Rec."Requestor No.")
                {

                }
                field("Requestor Name"; Rec."Requestor Name")
                {

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
                    varHeader: Record purchReqExercise;
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
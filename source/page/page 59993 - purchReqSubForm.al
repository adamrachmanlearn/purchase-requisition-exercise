page 59993 purchReqSubForm
{
    Caption = 'Lines';
    ApplicationArea = All;
    PageType = ListPart;
    SourceTable = purchReqLine;
    AutoSplitKey = true;
    DelayedInsert = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Document No.";Rec."Document No.")
                {
                    ApplicationArea = all;
                    Visible = false;
                }
                field("Line No.";Rec."Line No.")
                {
                    ApplicationArea = all;
                    Visible = false;
                }
                field("Account No.";Rec."Account No.")
                {
                    ApplicationArea = all;
                    Caption = 'No.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = all;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = all;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = all;
                }
                field(Keterangan; Rec.Keterangan)
                {
                    ApplicationArea = all;
                }
                field("Tanggal Diperlukan"; Rec."Tanggal Diperlukan")
                {
                    ApplicationArea = all;
                }
                field("Specification 1"; Rec."Specification 1")
                {
                    ApplicationArea = all;
                }
                field("Specification 2"; Rec."Specification 2")
                {
                    ApplicationArea = all;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = all;
                    Caption = 'Store Code';
                }
            }
        }
    }
}

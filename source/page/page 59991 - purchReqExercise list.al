page 59991 purchReqExerciseList
{
    Caption = 'Purchase Requisition (Exercise)';

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = purchReqExercise;
    CardPageId = 59992;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {

                }
                field("Document Date"; Rec."Document Date")
                {

                }
                field("Location Code"; Rec."Location Code")
                {

                }
                field("Location Name"; Rec."Location Name")
                {

                }
                field("Requestor No."; Rec."Requestor No.")
                {

                }
                field("Requestor Name"; Rec."Requestor Name")
                {

                }
                field("Status"; Rec."Status")
                {

                }
                field("Delivery Due Date"; Rec."Delivery Due Date")
                {

                }
            }
        }
        area(Factboxes)
        {

        }
    }
}
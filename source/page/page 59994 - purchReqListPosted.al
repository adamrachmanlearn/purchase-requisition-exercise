page 59994 purchReqListPosted
{
    Caption = 'Posted Purchase Requisition (Exercise)';

    ApplicationArea = All;
    PageType = List;
    UsageCategory = Lists;
    SourceTable = purchReqHeaderPosted;
    CardPageId = 59995;
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
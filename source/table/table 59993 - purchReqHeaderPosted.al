table 59993 purchReqHeaderPosted
{
    Caption = 'Purchase Requisition Exercise Header Posted';

    fields
    {
        field(1; "No."; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(2; "Document Date"; Date)
        {

        }
        field(3; "Date Required"; Date)
        {

        }
        field(4; "Requestor No."; Code[20])
        {
            Editable = false;
            TableRelation = Employee;

            trigger OnValidate()
            var
                currentRequestor: Record Employee;
            begin
                if currentRequestor.Get(rec."Requestor No.") then
                    Rec."Requestor Name" := currentRequestor."First Name"
            end;
        }
        field(5; Notes; Text[250])
        {

        }
        field(6; "No. Series"; Code[20])
        {

        }
        field(7; Amount; Decimal)
        {

        }
        field(8; "PR Only"; Boolean)
        {

        }
        field(9; Status; Option)
        {
            OptionMembers = Open,Closed;
        }
        field(10; "Completely Vendor Selected"; Boolean)
        {

        }
        field(11; "Completely Ordered"; Boolean)
        {

        }
        field(12; "Partially Vendor Selected"; Boolean)
        {

        }
        field(13; "Office Location Code"; Code[20])
        {

        }
        field(14; Quantity; Decimal)
        {

        }
        field(15; "Delivery Location"; Text[250])
        {

        }
        field(16; Rejected; Boolean)
        {

        }
        field(17; "Vendor Selected"; Boolean)
        {

        }
        field(18; "Order Selected"; Boolean)
        {

        }
        field(19; "Office Location Filter"; Code[20])
        {

        }
        field(20; "Requestor First Name"; Text[50])
        {

        }
        field(21; "Requestor Last Name"; Text[50])
        {

        }
        field(22; "Shortcut Dimension 1 Code"; Code[20])
        {

        }
        field(23; "Shortcut Dimension 2 Code"; Code[20])
        {

        }
        field(24; "Delivery Location Code"; Code[20])
        {

        }
        field(25; "Delivery Loc. Dimension Filter"; Code[20])
        {

        }
        field(26; "Amount (LCY)"; Decimal)
        {

        }
        field(27; "Submitted Date"; DateTime)
        {

        }
        field(29; "No. of Payment Terms"; Integer)
        {

        }
        field(30; "PR Only Closed"; Boolean)
        {

        }
        field(70; "Created User ID"; Code[30])
        {

        }
        field(51003; "Location Code"; Code[20])
        {

        }
        field(51004; "Requestor Outlet"; Boolean)
        {

        }
        field(54000; Advance; Boolean)
        {

        }
        field(58003; "Budget Limit"; Decimal)
        {

        }
        field(100; "Location Name"; Text[250])
        {

        }
        field(101; "Requestor Name"; Text[250])
        {

        }
        field(102; "Delivery Due Date"; DateTime)
        {

        }
        field(103; "Store Code"; Code[20])
        {

        }
        field(104; "Divisi Code"; Code[20])
        {

        }
        field(105; "Notes Rejected"; Text[250])
        {

        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
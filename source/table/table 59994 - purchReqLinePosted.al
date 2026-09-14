table 59994 purchReqLinePosted
{
    Caption = 'Purchase Requisition Exercise Line Posted';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
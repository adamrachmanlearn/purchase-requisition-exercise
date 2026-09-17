table 59992 purchReqLine
{
    Caption = 'Purchase Requisition Exercise Line';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;

            TableRelation = purchReqHeader."No.";
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Item Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Inventory, "Non Asset (Services)", "Fixed Asset";
        }
        field(4; "Account No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Description"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Estimated Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Line Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Shortcut Dimension 1 Code"; Code[20])
        {
            DataClassification = ToBeClassified;

            TableRelation = "Dimension Value".Code where(
                "Global Dimension No." = const(1),
                // Code = field("Dimension 1 Value Filter"),
                Blocked = const(false)
            );
        }
        field(10; "Shortcut Dimension 2 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Shortcut Dimension 3 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Shortcut Dimension 4 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Shortcut Dimension 5 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Shortcut Dimension 6 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Shortcut Dimension 7 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Dimension 3 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Dimension 4 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Dimension 5 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(19; "Dimension 6 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Dimension 7 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(21; "Dimension 1 Value Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(22; "Dimension 2 Value Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Dimension 3 Value Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(24; "Dimension 4 Value Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Dimension 5 Value Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(26; "Dimension 6 Value Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(27; "Dimension 7 Value Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(28; "FA Sub-type"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(30; "G/L Acc. No. Filter"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(31; "Completely Vendor Selected"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(32; "Completely Ordered"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(33; "Vendor Selected"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(34; "Order Selected"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(35; "Specification 1"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(36; "Specification 2"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(37; "Shortcut Dimension 8 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(38; "Dimension 8 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(39; "Dimension 8 Value Filter"; Code[150])
        {
            DataClassification = ToBeClassified;
        }
        field(40; "Completely Invoiced"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(41; "Header Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Released,"Pending Approval",Rejected,Posted;
        }
        field(42; Status; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Open,Released,"Pending Approval";
        }
        field(43; "Document Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(44; "Shortcut Dimension 9 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(45; "Dimension 9 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(46; "Dimension 9 Value Filter"; Code[150])
        {
            DataClassification = ToBeClassified;
        }
        field(47; "Shortcut Dimension 10 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(48; "Dimension 10 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(49; "Dimension 10 Value Filter"; Code[150])
        {
            DataClassification = ToBeClassified;
        }
        field(50; "Shortcut Dimension 11 Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(51; "Line Amount (LCY)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(52; "Dimension 11 Filter"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(53; "Dimension 11 Value Filter"; Code[150])
        {
            DataClassification = ToBeClassified;
        }
        field(54; "Currency Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(55; "Currency Factor"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(56; "Purchase Line Exist"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(57; "Purch. Rcpt. Line Exist"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(58; "Purch. Inv. Line Exist"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(58000; "Unit of Measure"; Code[20])
        {
            DataClassification = ToBeClassified;

            TableRelation =
                if ("Item Type" = const(Inventory))
                    "Item Unit of Measure".Code where("Item No." = field("Account No."))
                else
                    "Unit of Measure".Code;
        }
        field(58001; "Location Code"; code[20])
        {
            DataClassification = ToBeClassified;

            TableRelation = Location where("Use As In-Transit" = const(false));
        }
        field(51001; "Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(54000; "Keterangan"; Text[500])
        {
            DataClassification = ToBeClassified;
            Caption = 'Alasan Pengajuan';
        }
        field(54001; "Tanggal Diperlukan"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(54002; "Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(54003; "Advance"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(54004; "Document Date Header"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(59991; "No."; Code[20])
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
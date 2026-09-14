report 59998 dummyReportLocal
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(DataItemName; purchReqHeader)
        {
            // auto-fills request page to filter only the lines of this header's line
            RequestFilterFields = "No.";

            column(No_; "No.")
            {

            }
            column(Requestor_No_; "Requestor No.")
            {

            }
            column(Requestor_Name; "Requestor Name")
            {

            }
            column(Document_Date; "Document Date")
            {

            }
            column(Delivery_Due_Date; "Date Required")
            {

            }
            column(Location_Code; "Location Code")
            {

            }
            // column(Location_Name; "Location Name")
            // {

            // }
            column(Notes; Notes)
            {

            }
            column(Status; Status)
            {

            }
            column(Store_Code; "Shortcut Dimension 1 Code")
            {

            }

            // calling lines
            dataitem("Purch. Requisition Line"; "Purch. Requisition Line")
            {
                DataItemLink = "Document No." = field("No.");

                column(Description; Description) { }
                column(Keterangan; Keterangan) { }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(Quantity; Quantity) { }
                column(Tanggal_Diperlukan; "Tanggal Diperlukan") { }
                column(Specification_1; "Specification 1") { }
            }
        }
    }

    // requestpage
    // {
    //     AboutTitle = 'Teaching tip title';
    //     AboutText = 'Teaching tip content';
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(LayoutName)
    //             {

    //             }
    //         }
    //     }
    // }

    rendering
    {
        // layout(LayoutName)
        // {
        //     Type = Excel;
        //     LayoutFile = './source/report/dummy report.xlsx';
        // }
        // layout(LayoutName)
        // {
        //     Type = Word;
        //     LayoutFile = './source/report/dummy report.docx';
        // }
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = './source/report/dummy report local.rdlc';
        }
    }

    var
        myInt: Integer;
}
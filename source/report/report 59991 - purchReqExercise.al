report 59991 purchReqExerciseForm
{
    Caption = 'Purchase Requisition Exercise Form';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(DataItemName; purchReqHeader)
        {
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
            column(Delivery_Due_Date; "Delivery Due Date")
            {

            }
            column(Location_Code; "Location Code")
            {

            }
            column(Location_Name; "Location Name")
            {

            }
            column(Notes; Notes)
            {

            }
            column(Status; Status)
            {

            }
            column(Store_Code; "Store Code")
            {

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
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = './source/report/report 59991 - purcReqExercise.rdlc';
        }
    }

    var
        myInt: Integer;
}
report 59991 purchReqReport
{
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem("Purchase Requisition Header"; purchReqHeader)
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
            column(Title; varEmployee."Job Title")
            {

            }
            column(Department; varDepartment)
            {

            }

            dataitem("Purchase Requisition Line";purchReqLine)
            {
                // DataItemLink = documentno;
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = './source/report/report 59991 - purchReqReport.rdlc';
        }
    }

    var
        varEmployee : Record Employee;
        varDepartment : Text[100];
}
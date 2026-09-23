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
            column(employeeTitle;varEmployeeJobTitle)
            {

            }
            column(employeeDepartment;varEmployeeDepartment)
            {

            }

            dataitem("Purchase Requisition Line";purchReqLine)
            {
                DataItemLink = "Document No." = field("No.");

                column(Description;Description) {}
                column(Keterangan;Keterangan) {}
                column(Unit_of_Measure;"Unit of Measure") {}
                column(Quantity;Quantity) {}
                column(Tanggal_Diperlukan;"Tanggal Diperlukan") {}
                column(Specification_1;"Specification 1") {}
            }

            trigger OnAfterGetRecord()
            var
                varEmployee: Record Employee;
            begin
                // if varEmployee search for current requestor no (employee's PK) then..
                if varEmployee.Get("Requestor No.") then
                varEmployeeJobTitle := varEmployee."Job Title";
                varEmployeeDepartment := varEmployee."MSI_Division Code"
            end;
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
        varEmployeeJobTitle : Text[100];
        varEmployeeDepartment : Text[100];
}
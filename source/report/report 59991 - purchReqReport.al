report 59991 purchReqReport
{
    ApplicationArea = All;
    DefaultRenderingLayout = RDLC_layout;

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
            column(companyPicture; varCompany.Picture)
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
                column(runningNo; varRunningNoText){}

                trigger OnAfterGetRecord()
                begin
                    if Description <> '' then begin
                        varRunningNo += 1;
                        varRunningNoText := Format(varRunningNo);
                    end
                    else
                        varRunningNoText := '';
                end;
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
        layout(RDLC_layout)
        {
            Type = RDLC;
            Caption = 'RDLC Layout';
            LayoutFile = './source/report/report 59991 - purchReqReport.rdlc';
        }
        layout(Word_layout)
        {
            Type = Word;
            Caption = 'Word Layout';
            LayoutFile = './source/report/report 59991 - purchReqReport.docx';
        }
    }

    // getting blog fields
    trigger OnInitReport()
    begin
        varCompany.Get();
        varCompany.CalcFields(Picture);
    end;

    var
        varEmployeeJobTitle : Text[100];
        varEmployeeDepartment : Text[100];
        varRunningNo: Integer;
        varRunningNoText: Text[100];
        varCompany: Record "Company Information";
}
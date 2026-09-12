reportextension 59993 dummyReportExt extends dummyReport
{
    dataset
    {
        add("Purch. Requisition Line")
        {
            column(Line_No_; "Line No.")
            {

            }

        }
    }

    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {

        layout(LayoutNameExt)
        {
            Type = RDLC;
            LayoutFile = './source/report/layoutrdlc.rdlc';
        }
    }
}
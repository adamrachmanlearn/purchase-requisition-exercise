query 59991 exerciseQuery
{
    QueryType = Normal;
    Caption = 'Item Ledger Query (Exercise)';
    UsageCategory = ReportsAndAnalysis;
    
    elements
    {
        dataitem(itemLedgerEntry;"Item Ledger Entry")
        {
            column(Posting_Date;"Posting Date")
            {
                
            }
            column(Item_No_;"Item No.")
            {
                
            }
            column(Unit_of_Measure_Code;"Unit of Measure Code")
            {
                
            }
            column(Quantity;Quantity)
            {
                
            }
            column(Description;Description)
            {
                
            }
            column(Location_Code;"Location Code")
            {

            }
            
            dataitem(Location;Location)
            {
                DataItemLink = Code = itemLedgerEntry."Location Code";

                column(Name;Name)
                {
                    
                }
            }
        }
    }
}
xmlport 59991 purchReqHeaderXmlport
{
    schema
    {
        textelement(NodeName1)
        {
            tableelement(NodeName2; purchReqHeader)
            {
                // fieldattribute(NodeName3; NodeName2.SourceFieldName)
                // {
                    
                // }
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
}
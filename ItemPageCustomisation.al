profile MyNewProfile 
{
    Description = 'Demo Profile';
    RoleCenter = "Order Processor Role Center";
    Customizations = MyCustomisation;
}
pagecustomization MyCustomisation customizes "Item List"
{
    layout{
        modify("Cost is Adjusted"){
            Visible = false;
        }
            
    }
}
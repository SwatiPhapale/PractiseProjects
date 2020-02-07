<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDrp.aspx.cs" Inherits="SearchFilterDropdown.SearchDrp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.min.js"> </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
                <h1>How to implement search filter</h1>
                <asp:DropDownList ID="drpSearch" align-content="Right" runat="server" Width="250px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeDBConnectionString %>" SelectCommand="SELECT [Name] FROM [Employees]"></asp:SqlDataSource>
               
           
            
        </div>
          <script >
              $('#<%=drpSearch.ClientID%>').chosen();
    </script>
    </form>
</body>
</html>

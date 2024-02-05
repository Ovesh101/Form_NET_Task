<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project_Task.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f3f3f3;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1{
            text-align : center;
            
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .center {
            text-align: center;
        }
        .btn{
          display : flex;
           
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Customer Information</h1>
         <table>
        <tr>
            <th>Customer ID</th>
            <th>Customer Name</th>
            <th>Age</th>
            <th>Email</th>
            <th>Mobile Number</th>
            <th>Operation</th>
        </tr>
        <tr>
            <td>1</td>
            <td>John Doe</td>
            <td class="center">30</td>
            <td>john@example.com</td>
            <td>123-456-7890</td>
          
        </tr>
        <tr>
            <td>2</td>
            <td>Jane Smith</td>
            <td class="center">25</td>
            <td>jane@example.com</td>
            <td>987-654-3210</td>
            
        </tr>
            
        <!-- Add more rows as needed -->
    </table>
            <div class="btn">
                <asp:Button ID="Button1" runat="server" Text="Update" Height="60px" Width="148px" />
                <asp:Button ID="Button2" runat="server" Text="Add" Height="60px" Width="152px" />
            </div>
             


 </div>
        <asp:GridView ID="GridView1" runat="server" Height="276px">
            <Columns>
                <asp:TemplateField HeaderText="Email"></asp:TemplateField>
                <asp:BoundField HeaderText="Mobile_Number" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Edit" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

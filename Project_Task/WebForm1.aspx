<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_Task.WebForm1" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Table</title>
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
        .btn {
            margin-left : 400px;
        }
        #Button1{
            margin-right :20px;
            background-color: #3498db;
            color : black;
            font-weight :800;

        }
        #Button2{
            background-color: #3498db;
             color : black;
            font-weight :800;

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
    </style>
<body>
    <form id="form1" runat="server">
        <div>

            <table>
        <tr>
            <th>Customer ID</th>
            <th>Customer Name</th>
            <th>Age</th>
            <th>Email</th>
            <th>Mobile Number</th>
        </tr>
        <tr>
            <td>1</td>
            <td>John Doe</td>
            <td class="center">30</td>
            <td>john@example.com</td>
            <td>123-456-7890</td>
        </tr>
       
        <!-- Add more rows as needed -->
    </table>
        </div>
        <div class="btn">
            <asp:Button ID="Button1" runat="server" ForeColor="#333333" Height="62px" Text="Update" Width="138px" />
               <asp:Button ID="Button2" runat="server" Height="62px" Text="Add" Width="141px" ForeColor="#333333" />

        </div>


        
    </form>
</body>
</html>

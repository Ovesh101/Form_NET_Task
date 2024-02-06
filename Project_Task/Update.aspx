<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Project_Task.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group .textbox {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn-update {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-update:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Update Customer Data</h2>
            <div class="form-group">
                <label for="txtCustomerName">Customer Name:</label>
                <asp:TextBox ID="txtCustomerName" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtAge">Age:</label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPhoneNumber">Phone Number:</label>
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn-update" OnClick="btnUpdate_Click"  />
        </div>

      <asp:DropDownList ID="CountryDropDown" runat="server" OnSelectedIndexChanged="CountryDropDown_SelectedIndexChanged" AutoPostBack="true">
         <asp:ListItem Text="Select Country" Value="" />
           <asp:ListItem Text="United States" Value="USA" />
         <asp:ListItem Text="Canada" Value="Canada" />
            <asp:ListItem Text="United Kingdom" Value="UK" />

    </asp:DropDownList>

        <asp:DropDownList ID="CityDropDown" runat="server" AutoPostBack="true" Enabled="false" OnSelectedIndexChanged="CityDropDown_SelectedIndexChanged">
        <asp:ListItem Text="Select City" Value="" />
        </asp:DropDownList>
    </form>
</body>
</html>

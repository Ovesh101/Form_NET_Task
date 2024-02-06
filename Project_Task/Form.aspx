<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Project_Task.WebForm1" %>


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
            margin-left: 500px;
        }

        #Button1 {
            margin-right: 20px;
            background-color: #3498db;
            color: black;
            font-weight: 800;
        }

        #Button2 {
            background-color: #3498db;
            color: black;
            font-weight: 800;
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

        .auto-style1 {
            width: 99px;
        }

        .auto-style2 {
            width: 108px;
        }

        .auto-style3 {
            width: 74%;
        }
    </style>
    <body>
        <form id="form1" runat="server">
            <div>

                <table class="auto-style3">
                    <tr>

                        <th>Customer Name</th>
                        <th>Age</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                    </tr>
                    <tr>

                        <td class="auto-style2">
                            <asp:TextBox ID="txtCustomer_name" runat="server" Width="306px" Height="32px" BorderStyle="None"></asp:TextBox></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtAge" runat="server" Width="87px" Height="32px" BorderStyle="None"></asp:TextBox></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtEmail" runat="server" Width="247px" Height="32px" BorderStyle="None"></asp:TextBox></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtPhone_number" runat="server" Width="268px" Height="32px" BorderStyle="None"></asp:TextBox></td>
                    </tr>


                    <!-- Add more rows as needed -->
                </table>
            </div>
            <div class="btn">
                <asp:Button ID="Button1" runat="server" ForeColor="#333333" Height="62px" Text="Clear" Width="138px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Height="62px" Text="Add" Width="141px" ForeColor="#333333" OnClick="Button2_Click" />

            </div>

            <asp:GridView ID="GridView1" DataKeyNames="customer_id" runat="server" OnRowEditing="OnRowEdit" OnRowDeleting="OnRowDelete" AutoGenerateColumns="false" Width="1336px" AllowPaging="True" PageSize="5"  OnPageIndexChanging="GridView1_PageIndexChanging" Height="543px" >
                <Columns>
                    <asp:TemplateField HeaderText="Customer Id" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblCustomer_id" runat="server" Text='<%# Eval("customer_id") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCustomer_id" runat="server" Text='<%# Eval("customer_id") %>' Width="140"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Customer Name" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblCustomer_name" runat="server" Text='<%# Eval("customer_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCustomer_name" runat="server" Text='<%# Eval("customer_name") %>' Width="140"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblAge" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAge" runat="server" Text='<%# Eval("age") %>' Width="140"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("email") %>' Width="140"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone Number" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblPhone_number" runat="server" Text='<%# Eval("phone_number") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPhone_number" runat="server" Text='<%# Eval("phone_number") %>' Width="140"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                        ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>







        </form>
    </body>
</html>

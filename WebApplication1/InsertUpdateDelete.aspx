﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertUpdateDelete.aspx.cs" Inherits="WebApplication1.InsertUpdateDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <asp:HiddenField ID="hfContactID" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td colspan ="2">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td colspan ="2">
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td colspan ="2">
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                 
                    <td colspan ="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
                 <tr>
                    
                    <td colspan ="2">
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" Forecolor ="Green"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td colspan ="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" Forecolor ="Red"></asp:Label>  
                    </td>
                </tr>
             </table>

       
        <p>
            <asp:GridView ID="gvContact" runat="server" AutoGenerateColumns="False">
               <Columns>
                  <asp:BoundField DataField ="Name" HeaderText ="Name"/>
                   <asp:BoundField DataField ="Mobile" HeaderText ="Mobile"/>
                   <asp:BoundField DataField ="Address" HeaderText ="Address"/>
                   <asp:TemplateField>
                       <ItemTemplate>
                           <asp:LinkButton ID="lnkView" runat="server" CommandArgument ='<%# Eval("ContactID") %>' OnClick ="lnk_OnClick">View</asp:LinkButton>
                          
                       </ItemTemplate>
                   </asp:TemplateField>

               </Columns>
            </asp:GridView>
        </p>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_event.aspx.cs" Inherits="EVENT_MS.add_event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1> Add New Event </h1>
    <table>
        <tr>
            <td>name</td>
            <td>
                <asp:TextBox ID="Textnm" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
     <td>descrition</td>
     <td>
         <asp:TextBox ID="Textdes" runat="server"></asp:TextBox></td>
 </tr>
            <td>location</td>
    <td>
        <asp:TextBox ID="Textloc" runat="server"></asp:TextBox></td>
</tr>
        
        <tr>
            <td>image</td>
            <td>
                <asp:FileUpload ID="flpimg" runat="server" /></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="add event" OnClick="Button1_Click" /></td>
        </tr>
    </table>
                <br />
                <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("eve_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="description">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("eve_des") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="loaction">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("eve_loc") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("eve_img") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="cmd_edt">edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="cmd_dlt">delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                </div>
    </form>
</body>
</html>

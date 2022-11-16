<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminviewcmpyreg.aspx.cs" Inherits="Mainproject.Adminviewcmpyreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
           .button
        {
            border: none;
            background-color:black;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
        }
      .button:hover {
  background-color: white;
  color:black;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <table>
            <td>
                <tr>
                        <br />
                    <br />
                    <br />




                </tr>
            </td>
        </table>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="usercompanyname" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="usercompanyname" HeaderText="usercompanyname" ReadOnly="True" SortExpression="usercompanyname" />
                <asp:BoundField DataField="useraddress" HeaderText="useraddress" SortExpression="useraddress" />
                <asp:BoundField DataField="usercity" HeaderText="usercity" SortExpression="usercity" />
                <asp:BoundField DataField="userstate" HeaderText="userstate" SortExpression="userstate" />
                <asp:BoundField DataField="userpincode" HeaderText="userpincode" SortExpression="userpincode" />
                <asp:BoundField DataField="usercontectname" HeaderText="usercontectname" SortExpression="usercontectname" />
                <asp:BoundField DataField="usermobileno" HeaderText="usermobileno" SortExpression="usermobileno" />
                <asp:BoundField DataField="usercontectno" HeaderText="usercontectno" SortExpression="usercontectno" />
                <asp:BoundField DataField="useremailid" HeaderText="useremailid" SortExpression="useremailid" />
                <asp:BoundField DataField="usercompanywebsite" HeaderText="usercompanywebsite" SortExpression="usercompanywebsite" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="userpassword" HeaderText="userpassword" SortExpression="userpassword" />
                <asp:BoundField DataField="userconpassword" HeaderText="userconpassword" SortExpression="userconpassword" />
            </Columns>

            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mainprojectdbConnectionString10 %>" DeleteCommand="DELETE FROM [companyregtb] WHERE [usercompanyname] = @usercompanyname" InsertCommand="INSERT INTO [companyregtb] ([usercompanyname], [useraddress], [usercity], [userstate], [userpincode], [usercontectname], [usermobileno], [usercontectno], [useremailid], [usercompanywebsite], [username], [userpassword], [userconpassword]) VALUES (@usercompanyname, @useraddress, @usercity, @userstate, @userpincode, @usercontectname, @usermobileno, @usercontectno, @useremailid, @usercompanywebsite, @username, @userpassword, @userconpassword)" SelectCommand="SELECT [usercompanyname], [useraddress], [usercity], [userstate], [userpincode], [usercontectname], [usermobileno], [usercontectno], [useremailid], [usercompanywebsite], [username], [userpassword], [userconpassword] FROM [companyregtb]" UpdateCommand="UPDATE [companyregtb] SET [useraddress] = @useraddress, [usercity] = @usercity, [userstate] = @userstate, [userpincode] = @userpincode, [usercontectname] = @usercontectname, [usermobileno] = @usermobileno, [usercontectno] = @usercontectno, [useremailid] = @useremailid, [usercompanywebsite] = @usercompanywebsite, [username] = @username, [userpassword] = @userpassword, [userconpassword] = @userconpassword WHERE [usercompanyname] = @usercompanyname">
            <DeleteParameters>
                <asp:Parameter Name="usercompanyname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="usercompanyname" Type="String" />
                <asp:Parameter Name="useraddress" Type="String" />
                <asp:Parameter Name="usercity" Type="String" />
                <asp:Parameter Name="userstate" Type="String" />
                <asp:Parameter Name="userpincode" Type="String" />
                <asp:Parameter Name="usercontectname" Type="String" />
                <asp:Parameter Name="usermobileno" Type="String" />
                <asp:Parameter Name="usercontectno" Type="String" />
                <asp:Parameter Name="useremailid" Type="String" />
                <asp:Parameter Name="usercompanywebsite" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="userpassword" Type="String" />
                <asp:Parameter Name="userconpassword" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="useraddress" Type="String" />
                <asp:Parameter Name="usercity" Type="String" />
                <asp:Parameter Name="userstate" Type="String" />
                <asp:Parameter Name="userpincode" Type="String" />
                <asp:Parameter Name="usercontectname" Type="String" />
                <asp:Parameter Name="usermobileno" Type="String" />
                <asp:Parameter Name="usercontectno" Type="String" />
                <asp:Parameter Name="useremailid" Type="String" />
                <asp:Parameter Name="usercompanywebsite" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="userpassword" Type="String" />
                <asp:Parameter Name="userconpassword" Type="String" />
                <asp:Parameter Name="usercompanyname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <table>
            <td>
                <tr>
                        <br />
                    <br />
                    <br />
                      <br />
                    <br />
                    <br />




                </tr>
            </td>
        </table>
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Back" OnClick="Button1_Click" />

        </center>

</asp:Content>

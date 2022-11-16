<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminviewstureg.aspx.cs" Inherits="Mainproject.Adminviewpage" %>
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

   
       <!--- <h5>Student Register Details</h5>--->
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
        
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="enrollno" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
              <AlternatingRowStyle BackColor="#CCCCCC" />
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                  <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                  <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                  <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                  <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                  <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                  <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                  <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                  <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                  <asp:BoundField DataField="enrollno" HeaderText="enrollno" ReadOnly="True" SortExpression="enrollno" />
                  <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                  <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                  <asp:BoundField DataField="confopassword" HeaderText="confopassword" SortExpression="confopassword" />
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
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mainprojectdbConnectionString11 %>" DeleteCommand="DELETE FROM [students1regtb] WHERE [enrollno] = @enrollno" InsertCommand="INSERT INTO [students1regtb] ([name], [surname], [city], [address], [state], [pincode], [dob], [gender], [mobileno], [emailid], [enrollno], [username], [password], [confopassword]) VALUES (@name, @surname, @city, @address, @state, @pincode, @dob, @gender, @mobileno, @emailid, @enrollno, @username, @password, @confopassword)" SelectCommand="SELECT [name], [surname], [city], [address], [state], [pincode], [dob], [gender], [mobileno], [emailid], [enrollno], [username], [password], [confopassword] FROM [students1regtb]" UpdateCommand="UPDATE [students1regtb] SET [name] = @name, [surname] = @surname, [city] = @city, [address] = @address, [state] = @state, [pincode] = @pincode, [dob] = @dob, [gender] = @gender, [mobileno] = @mobileno, [emailid] = @emailid, [username] = @username, [password] = @password, [confopassword] = @confopassword WHERE [enrollno] = @enrollno">
               <DeleteParameters>
                   <asp:Parameter Name="enrollno" Type="String" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="name" Type="String" />
                   <asp:Parameter Name="surname" Type="String" />
                   <asp:Parameter Name="city" Type="String" />
                   <asp:Parameter Name="address" Type="String" />
                   <asp:Parameter Name="state" Type="String" />
                   <asp:Parameter Name="pincode" Type="String" />
                   <asp:Parameter DbType="Date" Name="dob" />
                   <asp:Parameter Name="gender" Type="String" />
                   <asp:Parameter Name="mobileno" Type="String" />
                   <asp:Parameter Name="emailid" Type="String" />
                   <asp:Parameter Name="enrollno" Type="String" />
                   <asp:Parameter Name="username" Type="String" />
                   <asp:Parameter Name="password" Type="String" />
                   <asp:Parameter Name="confopassword" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="name" Type="String" />
                   <asp:Parameter Name="surname" Type="String" />
                   <asp:Parameter Name="city" Type="String" />
                   <asp:Parameter Name="address" Type="String" />
                   <asp:Parameter Name="state" Type="String" />
                   <asp:Parameter Name="pincode" Type="String" />
                   <asp:Parameter DbType="Date" Name="dob" />
                   <asp:Parameter Name="gender" Type="String" />
                   <asp:Parameter Name="mobileno" Type="String" />
                   <asp:Parameter Name="emailid" Type="String" />
                   <asp:Parameter Name="username" Type="String" />
                   <asp:Parameter Name="password" Type="String" />
                   <asp:Parameter Name="confopassword" Type="String" />
                   <asp:Parameter Name="enrollno" Type="String" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminviewstuapplyjob.aspx.cs" Inherits="Mainproject.Adminviewstuapplyjob" %>
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

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                 <asp:BoundField DataField="jobcategory" HeaderText="jobcategory" SortExpression="jobcategory" />
                 <asp:BoundField DataField="usercompanyname" HeaderText="usercompanyname" SortExpression="usercompanyname" />
                 <asp:BoundField DataField="skill" HeaderText="skill" SortExpression="skill" />
                 <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                 <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                 <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" />
                 <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                 <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                 <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
                 <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                 <asp:BoundField DataField="Filename" HeaderText="Filename" SortExpression="Filename" />
                 <asp:BoundField DataField="FileType" HeaderText="FileType" SortExpression="FileType" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mainprojectdbConnectionString8 %>" DeleteCommand="DELETE FROM [StudentsApplyJobs] WHERE [id] = @id" InsertCommand="INSERT INTO [StudentsApplyJobs] ([jobcategory], [usercompanyname], [skill], [Name], [Dob], [Mobile_No], [LName], [Address], [Emailid], [description], [Filename], [FileType]) VALUES (@jobcategory, @usercompanyname, @skill, @Name, @Dob, @Mobile_No, @LName, @Address, @Emailid, @description, @Filename, @FileType)" SelectCommand="SELECT [id], [jobcategory], [usercompanyname], [skill], [Name], [Dob], [Mobile_No], [LName], [Address], [Emailid], [description], [Filename], [FileType] FROM [StudentsApplyJobs]" UpdateCommand="UPDATE [StudentsApplyJobs] SET [jobcategory] = @jobcategory, [usercompanyname] = @usercompanyname, [skill] = @skill, [Name] = @Name, [Dob] = @Dob, [Mobile_No] = @Mobile_No, [LName] = @LName, [Address] = @Address, [Emailid] = @Emailid, [description] = @description, [Filename] = @Filename, [FileType] = @FileType WHERE [id] = @id">
              <DeleteParameters>
                  <asp:Parameter Name="id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="jobcategory" Type="String" />
                  <asp:Parameter Name="usercompanyname" Type="String" />
                  <asp:Parameter Name="skill" Type="String" />
                  <asp:Parameter Name="Name" Type="String" />
                  <asp:Parameter Name="Dob" Type="String" />
                  <asp:Parameter Name="Mobile_No" Type="String" />
                  <asp:Parameter Name="LName" Type="String" />
                  <asp:Parameter Name="Address" Type="String" />
                  <asp:Parameter Name="Emailid" Type="String" />
                  <asp:Parameter Name="description" Type="String" />
                  <asp:Parameter Name="Filename" Type="String" />
                  <asp:Parameter Name="FileType" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="jobcategory" Type="String" />
                  <asp:Parameter Name="usercompanyname" Type="String" />
                  <asp:Parameter Name="skill" Type="String" />
                  <asp:Parameter Name="Name" Type="String" />
                  <asp:Parameter Name="Dob" Type="String" />
                  <asp:Parameter Name="Mobile_No" Type="String" />
                  <asp:Parameter Name="LName" Type="String" />
                  <asp:Parameter Name="Address" Type="String" />
                  <asp:Parameter Name="Emailid" Type="String" />
                  <asp:Parameter Name="description" Type="String" />
                  <asp:Parameter Name="Filename" Type="String" />
                  <asp:Parameter Name="FileType" Type="String" />
                  <asp:Parameter Name="id" Type="Int32" />
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

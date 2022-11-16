<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminviewstuedu.aspx.cs" Inherits="Mainproject.Adminviewstuedu" %>
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
            <asp:BoundField DataField="eclgname" HeaderText="eclgname" SortExpression="eclgname" />
            <asp:BoundField DataField="enrollno" HeaderText="enrollno" SortExpression="enrollno" />
            <asp:BoundField DataField="semester" HeaderText="semester" SortExpression="semester" />
            <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
            <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
            <asp:BoundField DataField="passyear" HeaderText="passyear" SortExpression="passyear" />
            <asp:BoundField DataField="cpi" HeaderText="cpi" SortExpression="cpi" />
            <asp:BoundField DataField="cgpa" HeaderText="cgpa" SortExpression="cgpa" />
            <asp:BoundField DataField="skill" HeaderText="skill" SortExpression="skill" />
            <asp:BoundField DataField="extraskill" HeaderText="extraskill" SortExpression="extraskill" />
            <asp:BoundField DataField="resume" HeaderText="resume" SortExpression="resume" />
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

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mainprojectdbConnectionString5 %>" DeleteCommand="DELETE FROM [educationtb] WHERE [id] = @id" InsertCommand="INSERT INTO [educationtb] ([eclgname], [enrollno], [semester], [education], [branch], [passyear], [cpi], [cgpa], [skill], [extraskill], [resume]) VALUES (@eclgname, @enrollno, @semester, @education, @branch, @passyear, @cpi, @cgpa, @skill, @extraskill, @resume)" SelectCommand="SELECT * FROM [educationtb]" UpdateCommand="UPDATE [educationtb] SET [eclgname] = @eclgname, [enrollno] = @enrollno, [semester] = @semester, [education] = @education, [branch] = @branch, [passyear] = @passyear, [cpi] = @cpi, [cgpa] = @cgpa, [skill] = @skill, [extraskill] = @extraskill, [resume] = @resume WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="eclgname" Type="String" />
        <asp:Parameter Name="enrollno" Type="String" />
        <asp:Parameter Name="semester" Type="String" />
        <asp:Parameter Name="education" Type="String" />
        <asp:Parameter Name="branch" Type="String" />
        <asp:Parameter Name="passyear" Type="String" />
        <asp:Parameter Name="cpi" Type="Double" />
        <asp:Parameter Name="cgpa" Type="Double" />
        <asp:Parameter Name="skill" Type="String" />
        <asp:Parameter Name="extraskill" Type="String" />
        <asp:Parameter Name="resume" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="eclgname" Type="String" />
        <asp:Parameter Name="enrollno" Type="String" />
        <asp:Parameter Name="semester" Type="String" />
        <asp:Parameter Name="education" Type="String" />
        <asp:Parameter Name="branch" Type="String" />
        <asp:Parameter Name="passyear" Type="String" />
        <asp:Parameter Name="cpi" Type="Double" />
        <asp:Parameter Name="cgpa" Type="Double" />
        <asp:Parameter Name="skill" Type="String" />
        <asp:Parameter Name="extraskill" Type="String" />
        <asp:Parameter Name="resume" Type="String" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Editcmpypostjob.aspx.cs" Inherits="Mainproject.Editcmpypostjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h5>::: Edit Job :::</h5>
        <table>
            <tr>
                <td>Company Name:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
  </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="usercompanyname" HeaderText="usercompanyname" SortExpression="usercompanyname" />
                <asp:BoundField DataField="jobcategory" HeaderText="jobcategory" SortExpression="jobcategory" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:BoundField DataField="Min_Qualification" HeaderText="Min_Qualification" SortExpression="Min_Qualification" />
                <asp:BoundField DataField="Requiredskill" HeaderText="Requiredskill" SortExpression="Requiredskill" />
                <asp:BoundField DataField="Extra_skill" HeaderText="Extra_skill" SortExpression="Extra_skill" />
                <asp:BoundField DataField="Max_age" HeaderText="Max_age" SortExpression="Max_age" />
                <asp:BoundField DataField="joblocation" HeaderText="joblocation" SortExpression="joblocation" />
                <asp:BoundField DataField="Expectsalary" HeaderText="Expectsalary" SortExpression="Expectsalary" />
                <asp:BoundField DataField="working_hour" HeaderText="working_hour" SortExpression="working_hour" />
                <asp:BoundField DataField="jobdescription" HeaderText="jobdescription" SortExpression="jobdescription" />
                <asp:BoundField DataField="last_apply_date" HeaderText="last_apply_date" SortExpression="last_apply_date" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mainprojectdbConnectionString15 %>" DeleteCommand="DELETE FROM [Addjobtb] WHERE [id] = @id" InsertCommand="INSERT INTO [Addjobtb] ([usercompanyname], [jobcategory], [Role], [Min_Qualification], [Requiredskill], [Extra_skill], [Max_age], [joblocation], [Expectsalary], [working_hour], [jobdescription], [last_apply_date]) VALUES (@usercompanyname, @jobcategory, @Role, @Min_Qualification, @Requiredskill, @Extra_skill, @Max_age, @joblocation, @Expectsalary, @working_hour, @jobdescription, @last_apply_date)" SelectCommand="SELECT * FROM [Addjobtb]" UpdateCommand="UPDATE [Addjobtb] SET [usercompanyname] = @usercompanyname, [jobcategory] = @jobcategory, [Role] = @Role, [Min_Qualification] = @Min_Qualification, [Requiredskill] = @Requiredskill, [Extra_skill] = @Extra_skill, [Max_age] = @Max_age, [joblocation] = @joblocation, [Expectsalary] = @Expectsalary, [working_hour] = @working_hour, [jobdescription] = @jobdescription, [last_apply_date] = @last_apply_date WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="usercompanyname" Type="String" />
                <asp:Parameter Name="jobcategory" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Min_Qualification" Type="String" />
                <asp:Parameter Name="Requiredskill" Type="String" />
                <asp:Parameter Name="Extra_skill" Type="String" />
                <asp:Parameter Name="Max_age" Type="Int32" />
                <asp:Parameter Name="joblocation" Type="String" />
                <asp:Parameter Name="Expectsalary" Type="String" />
                <asp:Parameter Name="working_hour" Type="String" />
                <asp:Parameter Name="jobdescription" Type="String" />
                <asp:Parameter Name="last_apply_date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="usercompanyname" Type="String" />
                <asp:Parameter Name="jobcategory" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Min_Qualification" Type="String" />
                <asp:Parameter Name="Requiredskill" Type="String" />
                <asp:Parameter Name="Extra_skill" Type="String" />
                <asp:Parameter Name="Max_age" Type="Int32" />
                <asp:Parameter Name="joblocation" Type="String" />
                <asp:Parameter Name="Expectsalary" Type="String" />
                <asp:Parameter Name="working_hour" Type="String" />
                <asp:Parameter Name="jobdescription" Type="String" />
                <asp:Parameter Name="last_apply_date" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
<Columns>
    <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblName" runat="server" Text='<%# Eval("usercompanyname") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("usercompanyname") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Country" ItemStyle-Width="150">
        <ItemTemplate>
            <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("jobcategory") %>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtCountry" runat="server" Text='<%# Eval("jobcategory") %>'></asp:TextBox>
        </EditItemTemplate>
    </asp:TemplateField>
    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150"/>
</Columns>
</asp:GridView>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
<tr>
    <td style="width: 150px">
        Name:<br />
        <asp:TextBox ID="txtName" runat="server" Width="140" />
    </td>
    <td style="width: 150px">
        Country:<br />
        <asp:TextBox ID="txtCountry" runat="server" Width="140" />
    </td>
    <td style="width: 100px">
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
    </td>
</tr>
</table>
        </center>--%>
</asp:Content>

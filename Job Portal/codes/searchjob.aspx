<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchjob.aspx.cs" Inherits="Mainproject.searchjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .search{
            
     
             background-color: lightcyan;
            border: none;
            color: black;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 16px;
        }
       
                .btu {
 
            background-color:gray;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
}

.btu:hover {
  opacity: 1;
    background-color: black;
  color:white;

        }
      
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center>
        <table class="search">

      <tr>
          <td>
                        Job Category:

          </td>
          <td>
               <asp:DropDownList ID="drop"  runat="server">
             <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Arts</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
        </asp:DropDownList>
          </td>
      </tr>
       
<tr>
    <td>
        Min.Qualification :
    </td>
    <td>
         <asp:DropDownList ID="drop1"  runat="server">
                         <asp:ListItem Text="Select Qualification" Value="0"></asp:ListItem>
             <asp:ListItem>BCA</asp:ListItem>
             <asp:ListItem>BSc</asp:ListItem>
             <asp:ListItem>BE</asp:ListItem>

             </asp:DropDownList>
    </td>
</tr>
           
      <tr>
    <td>
        Required Skill :
    </td>
    <td>
         <asp:DropDownList ID="drop2" runat="server">
                         <asp:ListItem Text="Select skill" Value="0"></asp:ListItem>
             <asp:ListItem>C</asp:ListItem>
                          <asp:ListItem>.NET</asp:ListItem>

                          <asp:ListItem>JAVA</asp:ListItem>


             </asp:DropDownList>
    </td>
</tr>    
            <tr>
                <td>
                                <asp:Button ID="Button1" Cssclass="btu" runat ="server" Text="Search Job" OnClick="Button1_Click" />

                </td>
            </tr>
            <tr>
                  <td>
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                </td>
            </tr>
            
            
              </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" >
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="usercompanyname" HeaderText="usercompanyname" />
                <asp:BoundField DataField="jobcategory" HeaderText="jobcategory" />
                <asp:BoundField DataField="Requiredskill" HeaderText="Requiredskill" />
                <asp:BoundField DataField="Role" HeaderText="Role" />
                <asp:BoundField DataField="Min_Qualification" HeaderText="Min_Qualification" />
                <asp:BoundField DataField="Extra_skill" HeaderText="Extra_skill" />
                <asp:BoundField DataField="Max_age" HeaderText="Max_age" />
                <asp:BoundField DataField="Expectsalary" HeaderText="Expectsalary" />
                <asp:BoundField DataField="joblocation" HeaderText="joblocation" />
                <asp:BoundField DataField="working_hour" HeaderText="working_hour" />
                <asp:BoundField DataField="jobdescription" HeaderText="jobdescription" />
                <asp:BoundField DataField="last_apply_date" HeaderText="last_apply_date" />


                <asp:HyperLinkField HeaderText="Apply Job" DataNavigateUrlFields="usercompanyname,jobcategory,Requiredskill" DataNavigateUrlFormatString="StudentsApplyJobs.aspx?usercompanyname={0}&jobcategory={1}&Requiredskill={2}" Text="To Apply" />
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
    </center>
    <center>
        <table>
              <tr>
            <td>
                <asp:Button ID="Button2" CssClass="btu" runat="server" Text="Back" OnClick="Button2_Click" />
            </td>
        </tr>
        </table>
      
    </center>

    
</asp:Content>

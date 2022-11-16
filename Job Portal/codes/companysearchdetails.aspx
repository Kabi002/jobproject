<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companysearchdetails.aspx.cs" Inherits="Mainproject.companysearchdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
    <h2> <asp:Label ID="lblcmpnyname" runat="server" Text="Label"></asp:Label></h2>

        <asp:Button ID="btngetapplications" runat="server" Text="Get Applications Details Here" OnClick="btngetapplications_Click" />

        <br />    
    <br />

    <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
        <Columns>
            <asp:BoundField DataField="usercompanyname" HeaderText="CmpyName" />
            <asp:BoundField DataField="jobcategory" HeaderText="JobCategory" />
            <asp:BoundField DataField="skill" HeaderText="Skill" />
            <asp:BoundField DataField="Name" HeaderText="FirstName" />
            <asp:BoundField DataField="LName" HeaderText="LastName" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" />
            <asp:BoundField DataField="Emailid" HeaderText="Emailid" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="Filename" HeaderText="Resume" />
            <asp:TemplateField HeaderText=" download resume">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>  
                    </ItemTemplate>  
                </asp:TemplateField>  

        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addjob.aspx.cs" Inherits="Mainproject.Addjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
         .addjob {
             background-color:darkolivegreen;
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
        
       .button {
 
            background-color:blueviolet;
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
  opacity: 1;
    background-color: black;
  color:white;

        }
.job{
    color:#40ff00;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h5 class="job">::: Add New Job :::</h5>
        <table class="addjob">
            <tr>
                <td>Company Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Catogory:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Arts</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Role:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Intern</asp:ListItem>
                        <asp:ListItem>Associate Softwate</asp:ListItem>
                        <asp:ListItem>Senior Software</asp:ListItem>
                        <asp:ListItem>BPO</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Min Qualification:</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>BSc</asp:ListItem>
                        <asp:ListItem>BE</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Required Skill:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>.NET</asp:ListItem>
                        <asp:ListItem>JAVA</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Extra Skill:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Max.Age:</td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>YEAR</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                         <asp:ListItem>23</asp:ListItem>
                         <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>

                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Job Location:</td>
                <td>
                    <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem>Select Location</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Bangalore</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Salary:</td>
                <td>
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>In Thousand</asp:ListItem>
                        <asp:ListItem>20000</asp:ListItem>
                        <asp:ListItem>25000</asp:ListItem>
                        <asp:ListItem>30000</asp:ListItem>
                        <asp:ListItem>35000</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Working Hour:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Description:
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Last Apply Date:
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"  type="date"></asp:TextBox>
                </td>
            </tr>
          <tr>
              <td>
                    <br />
              </td>
          </tr>

       
   
 
         <tr>
                <td>
                    <asp:Button ID="Button1" class="btu" runat="server" Text="PostJob" Width="153px" OnClick="Button1_Click" />
                </td>
            </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
            </table>
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

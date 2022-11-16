<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companydetails.aspx.cs" Inherits="Mainproject.companydetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
         .cmpy {
             background-color: gray;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table style="color:black" class="cmpy">
            <tr>
                <td align="right" class="auto-style4">Company Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="cname" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style8">Address:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="caddress" runat="server"  TextMode="MultiLine" Width="205px"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td align="right" class="auto-style6">City:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="ccity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">State:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="cstate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">Pincode:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="cpincode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">Contact Person Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="ccontactname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">Mobile No:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="cmobileno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">Contact No:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="ccontactno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">Email Id:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="cemailid" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style4">Company's Website:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="ccompanywebsite" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <br />

       </td>
            </tr>
      
        <tr>
                <td align="right" class="auto-style2">UserName:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="cusername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style10">Password:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="cpassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style10">Confo.Password:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="cconfopassword" runat="server" ></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
        <br />

       </td>
            </tr>
            
            
            <tr>
               <%-- <td>
                        <asp:Button ID="Button1" CssClass="btu" runat="server" Text="Edit"  />&nbsp;&nbsp;

                </td>--%>
                <td >
                        <asp:Button ID="Button2" CssClass="btu" runat="server" Text="Update" OnClick="Button2_Click"  />

                </td>
            </tr>
            </table>
            </center>
        <center>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </center>
   <%-- <div>
        <asp:Button ID="Button3" Class="button" runat="server" Text="Add Job Here" OnClick="Button3_Click" />
    </div>
    <div>
        <asp:Button ID="Button4" Class="button" runat="server" Text="Search Students Apply Details" Height="35px" OnClick="Button4_Click" Width="281px" />
    </div>
    <div>
        <asp:Button ID="Button5" Class="button" runat="server" Text="Edit Post Job" OnClick="Button5_Click" />
    </div>--%>

   <%-- <a href="Addjob.aspx">Add Job Here</a>

    <a href="companysearchdetails.aspx">Search Students Apply Details</a>

    <a href="Editcmpypostjob.aspx">Edit Post Job</a>--%>
</asp:Content>

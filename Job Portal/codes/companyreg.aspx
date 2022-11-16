<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companyreg.aspx.cs" Inherits="Mainproject.companyreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <style type="text/css">
    .auto-style1 {
        width: 259px;
    }
        .auto-style2 {
            height: 61px;
        }
        .auto-style3 {
            width: 259px;
            height: 61px;
        }
        .auto-style4 {
            height: 60px;
        }
        .auto-style5 {
            width: 259px;
            height: 60px;
        }
        .auto-style6 {
            height: 59px;
        }
        .auto-style7 {
            width: 259px;
            height: 59px;
        }
        .auto-style8 {
            height: 58px;
        }
        .auto-style9 {
            width: 259px;
            height: 58px;
        }
        .auto-style10 {
            height: 55px;
        }
        .auto-style11 {
            width: 259px;
            height: 55px;
        }
    </style>--%>
      <style>
       /*   .loginpage
        {
             background-color: dodgerblue;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 16px;
        }*/
       .cmpy {
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
    
               .button
        {
            border: none;
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
  background-color: white;
  color:black;

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
                        <h2 bgcolor="blue">Register as Company</h2>
                        <h5>Please fill all the details here</h5>

        <table class="cmpy">
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
                <td>
                    <br />
                    <br />

                </td>
            </tr>
            
           
            <tr>
                <td>
                        <asp:Button ID="Button1" CssClass="btu" runat="server" Text="Submit" OnClick="Button1_Click" />&nbsp;&nbsp;

                </td>
                <td >
                        <asp:Button ID="Button2" CssClass="btu" runat="server" Text="Reset" OnClick="Button2_Click" />

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                </td>
            </tr>
         


   </table>
        </center>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentreg.aspx.cs" Inherits="Mainproject.studentreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
    .admlogin
        {
             background-color: darkslategray;
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
       .txtlog
         {
            border: none;
  color: orangered;
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
                         <h2>Register as New student</h2>
                        <h5>Please fill all the details here</h5>


            <table class="admlogin">
                <tr>
                <td align="right" class="auto-style4">Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="sname" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td align="right" class="auto-style4">SurName:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="ssname" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td align="right" class="auto-style8">Address:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="saddress" runat="server"  TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td align="right" class="auto-style4">City:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="scity" runat="server"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                <td align="right" class="auto-style4">State:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="ssate" runat="server"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                <td align="right" class="auto-style4">Pincode:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="spincode" runat="server"></asp:TextBox>
                </td>
            </tr>
                   <tr>
                <td align="right" class="auto-style4">BirthDate:</td>
                    <td>
                       <asp:TextBox ID="sbirthdate" runat="server"  type ="date"></asp:TextBox></td>
            </tr>
                 <tr>
                     <td align="right" class="auto-style4">
                        Gender:
                     </td>
                     <td class="auto-style5">
                         <asp:DropDownList ID="sgender" runat="server">
                             <asp:ListItem>select Gender</asp:ListItem>
                             <asp:ListItem>Male</asp:ListItem>
                             <asp:ListItem>Female</asp:ListItem>
                             <asp:ListItem>Others</asp:ListItem>
                         </asp:DropDownList></td>
                     
                 </tr>
                   <tr>
                <td align="right" class="auto-style4">Mobile No:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="smobileno" runat="server"></asp:TextBox>
                </td>
        

                   <tr>
                <td align="right" class="auto-style4">Email Id:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="semailid" runat="server"></asp:TextBox>
                </td>
            </tr>
                   <tr>
                <td align="right" class="auto-style4">Enroll No:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="senrollno" runat="server"></asp:TextBox>
                </td>
            </tr>

                
                <tr>
                    <td>
                        <br />

                    </td>
                </tr>

                 <tr>
                <td align="right" class="auto-style4">UserName:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="susername" runat="server"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                <td align="right" class="auto-style4">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="spassword" runat="server"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                <td align="right" class="auto-style4">Confo.Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="sconfopassword" runat="server"></asp:TextBox>
                </td>
            </tr>

           
             <tr>
                <td>
        <br />

       </td>
            </tr>
            
            
            <tr>
                <td>
                        <asp:Button ID="Button1" CssClass="btu" runat="server" Text="Continue" OnClick="Button1_Click"  />&nbsp;&nbsp;

                </td>
                <td >
                        <asp:Button ID="Button2" CssClass="btu" runat="server" Text="Reset" OnClick="Button2_Click"  />

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

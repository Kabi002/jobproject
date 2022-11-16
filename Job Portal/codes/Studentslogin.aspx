<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Studentslogin.aspx.cs" Inherits="Mainproject.Studentslogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .stulogin {
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
 
            background-color:seagreen;
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
    <style>
        body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>



       <br />



   <table class="stulogin">
        <tr>
            <td style="color:black">
                UserName:<asp:TextBox ID="txtusername" runat="server" placeholder="Enter Id"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color:black">
                 Password:<asp:TextBox ID="textpassword" runat="server" placeholder="Enter password"></asp:TextBox>
            </td>
        </tr>
        <tr>
                                <td>
                                    <a href="studentreg.aspx" style="color:black">New Student?</a>
                                </td>
                                
                            </tr>
        <tr>
            <td>
                                    <asp:Button ID="txtlog" CssClass="btu" runat="server" Text="login" OnClick="txtlog_Click" Width="106px"/>
            
                 </td>
           
        </tr>
       <tr>
           <td>
                <asp:Label ID="Label1" style="color:black" runat="server" Text=""></asp:Label>

           </td>
       </tr>


   </table>
        </center><br />

</asp:Content>

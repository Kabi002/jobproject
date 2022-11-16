<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="Mainproject.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .admlogin
        {
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
      
        </style>
    <style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/*.bg-img {*/
  /* The image used */
  /*background-image: url("img_nature.jpg");

  min-height: 380px;*/

  /* Center and scale the image nicely */
  /*background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}*/

/* Add styles to the form container */


/* Full-width input fields */
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

/* Set a style for the submit button */
.btu {
  background-color: #04AA6D;
  color: #04AA6D;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border: none;
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

       <br />


   <table class="admlogin">
                <h1>Login</h1>

        <tr>
            <td style="color:black">
                Admin:<asp:TextBox ID="adminid" runat="server" placeholder="Enter Id"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color:black">
                 Password:<asp:TextBox ID="password" runat="server" type="password" placeholder="Enter password"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td>
           <asp:Button ID="btn" CssClass="btu" runat="server" Text="login" OnClick="txtlog_Click" Width="106px" />
            
             </td>
         </tr>
       <tr>
           <td>
              <asp:Label ID="Label1" style="color:black" runat="server" Text=""></asp:Label>

           </td>
       </tr>



   </table>
        </center>
   
</asp:Content>

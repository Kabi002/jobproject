<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="updatestudetails.aspx.cs" Inherits="Mainproject.updatestudetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
       .studetail {
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
        <table style="color:black" class="studetail">
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label> </td>
            </tr>
            <tr>
                <td>
                    SureName:
                </td>
                <td>
<asp:Label ID="Label3" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td>
<asp:Label ID="Label4" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    City:
                </td>
                <td>
<asp:Label ID="Label5" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    State:
                </td>
                <td>
<asp:Label ID="Label15" runat="server" Text=""></asp:Label>    

                </td>
            </tr>
            <tr>
                <td>
                    PinCode:
                </td>
                <td>
<asp:Label ID="Label6" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    BirthDate:
                </td>
                <td>
<asp:Label ID="Label7" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
<asp:Label ID="Label8" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    Mobileno:
                </td>
                <td>
<asp:Label ID="Label9" runat="server" Text=""></asp:Label>    
                </td>
               <%-- <td>
                         <asp:Button ID="Button4" class="button" runat="server" Text="Search Job" OnClick="Button1_Click" />

                </td>--%>
            </tr>
            <tr>
                <td>
                    EmailID:
                </td>
                <td>
<asp:Label ID="Label10" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    Enroll No:
                </td>
                <td>
<asp:Label ID="Label11" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    UserName:
                </td>
                <td>
<asp:Label ID="Label12" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
<asp:Label ID="Label13" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password:
                </td>
                <td>
<asp:Label ID="Label14" runat="server" Text=""></asp:Label>    
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
      
        <tr>
          <%--  <td>
                <asp:Button ID="Button1" CssClass="btu" runat="server" Text="Edit" />&nbsp;&nbsp;&nbsp;
            </td>--%>
            <td>
                <asp:Button ID="Button2" CssClass="btu" runat="server" Text="Edit" OnClick="Button2_Click" />
            </td>
        </tr>
       <%-- <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>--%>
          </table>
   </center>
     <div class="loginpage">
         <asp:Button ID="Button1" class="button" runat="server" Text="Edit Details" OnClick="Button1_Click" />
    </div>

    <div class="loginpage">
        <asp:Button ID="Button3" class="button" runat="server" Text="Search Job" OnClick="Button3_Click" />
    </div>
</asp:Content>

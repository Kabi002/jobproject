<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="Mainproject.StudentDetails" %>
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
                    <asp:TextBox ID="sname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    SureName:
                </td>
                <td>
                 <asp:TextBox ID="ssname" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td>
                <asp:TextBox ID="saddress" runat="server" TextMode="MultiLine"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    City:
                </td>
                <td>
                 <asp:TextBox ID="scity" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    State:
                </td>
                <td>
                  <asp:TextBox ID="sstate" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    PinCode:
                </td>
                <td>
                <asp:TextBox ID="spincode" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    BirthDate:
                </td>
                <td>
                <asp:TextBox ID="sbirthdate" runat="server" ></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
                 <asp:TextBox ID="sgender" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    Mobileno:
                </td>
                <td>
                <asp:TextBox ID="smobileno" runat="server"></asp:TextBox>

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
                 <asp:TextBox ID="semailid" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    Enroll No:
                </td>
                <td>
                  <asp:TextBox ID="senrollno" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    UserName:
                </td>
                <td>
                   <asp:TextBox ID="susername" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                   <asp:TextBox ID="spassword" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password:
                </td>
                <td>
                   <asp:TextBox ID="sconfopassword" runat="server"></asp:TextBox>

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
                <asp:Button ID="Button2" CssClass="btu" runat="server" Text="Update" OnClick="Button2_Click" />
            </td>
          <td>
              <asp:Button ID="Button1" CssClass="btu" runat="server" Text="Back" OnClick="Button1_Click" />
          </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
          </table>
   </center>
    <div>
        <asp:Button ID="Button3" class="button" runat="server" Text="Search Job" OnClick="Button3_Click" />
    </div>

    <%-- <div class="loginpage">
         <asp:Button ID="Button3" class="button" runat="server" Text="Search Job" OnClick="Button1_Click" />
    </div>--%>
<%--   // <a href="searchjob.aspx">Search job</a>--%>
</asp:Content>

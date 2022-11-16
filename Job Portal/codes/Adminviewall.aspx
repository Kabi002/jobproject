<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminviewall.aspx.cs" Inherits="Mainproject.Adminviewall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    
               .button
        {
            border: none;
            background-color:black;
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
    </style>
    



    <div class="loginpage">
         <asp:Button ID="Button1" class="button" runat="server" Text="STUDENT DETAILS" OnClick="Button1_Click" />
    </div>
     <div class="loginpage">
         <asp:Button ID="Button2" runat="server" Class="button" Text="EDUCATION DETAILS" OnClick="Button2_Click" />
    </div>
     <div class="loginpage">
         <asp:Button ID="Button3" runat="server" Class="button" Text="COMPANY DETAILS" OnClick="Button3_Click" />
    </div>
     <div class="loginpage">
         <asp:Button ID="Button4" runat="server" class="button" Text="COMPANY POST JOB" OnClick="Button4_Click" />
    </div>
    <div class="loginpage">
         <asp:Button ID="Button5" runat="server" class="button" Text="STUDENT APPLIED JOB" OnClick="Button5_Click" />
    </div>

</asp:Content>

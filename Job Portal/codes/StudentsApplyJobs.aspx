<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentsApplyJobs.aspx.cs" Inherits="Mainproject.StudentsApplyJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        .apply{
              background-color:cadetblue;
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


        .tab1{
             background-color: dimgrey;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div></div>
    <center>
          <center><h3>Job Details</h3></center>
    <table class="apply" >
        <tr>
    
            <td class="auto-style8">Company Name: </td>
           <td class="auto-style6"><asp:Label ID="lblcmpnyname" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style8">Job Category:</td>
            <td class="auto-style6"><asp:Label ID="lblJobCategory" runat="server" Text="Label"></asp:Label></td>



       </tr>
        <tr>
            <td class="auto-style8">Required Skill:</td>
           <td class="auto-style6"><asp:Label ID="lblRequiredskill" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        </table>
    <%--///////////////////////--%>
        <div>



       </div>
        <center><h3> Personal Details</h3></center>



       <table class="tab1">
           <tr>
            
            <td class="auto-style15">First Name:</td>
            <td class="auto-style16"><asp:TextBox ID="TextBox1" class="tb" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style15">Last Name:</td>
            <td class="auto-style16"><asp:TextBox ID="TextBox2" class="tb" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style15">DOB:</td>
            <td class="auto-style16"> <asp:TextBox ID="TextBox3"  type="date" class="tb" runat="server" Width="163px"></asp:TextBox></td>
        </tr>
            <tr>
            <td class="auto-style15">Address:</td>
            <td class="auto-style16"> <asp:TextBox ID="TextBox6"  class="tb" runat="server" Width="163px"></asp:TextBox></td>
        </tr>
            <tr>
            <td class="auto-style15">Mobile.No:</td>
            <td class="auto-style16"> <asp:TextBox ID="TextBox4" class="tb" runat="server"></asp:TextBox></td>
        </tr>
             <tr>
            <td class="auto-style15">Email Id:</td>
            <td class="auto-style16"> <asp:TextBox ID="txtemailid" class="tb" runat="server"></asp:TextBox></td>
        </tr>
            <tr>
            <td class="auto-style15">Description:</td>
            <td class="auto-style16"> <asp:TextBox ID="TextBox7"  class="tb" runat="server" Width="163px"></asp:TextBox></td>
        </tr>
             <tr>
            <td class="auto-style9">Resume:</td>
                <td> <asp:FileUpload ID="FileUpload1" runat="server" /> </td>
                  <td> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
           <!--- <td ><asp:TextBox ID="TextBox5" class="tb" type="file" runat="server"></asp:TextBox></td>--->
        </tr>
            
        </table>




      <%--  <div>
            <table>
                <
            </table>
            <asp:Button ID="Button2" runat="server" CssClass="btu" Text="submit" OnClick="Button2_Click" />
            <td>

            </td>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

       </div>--%>
        <%-- <div>
                             <asp:Button ID="Button1" CssClass="btu" runat="server" Text="Back" OnClick="Button2_Click" />

         </div>--%>

         <table>
             <tr>
                 <td>
                                 <asp:Button ID="Button3" runat="server" CssClass="btu" Text="submit" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;

                 </td>
                 <td>
                                  <asp:Button ID="Button4" CssClass="btu" runat="server" Text="Back" OnClick="Button2_Click" />

                 </td>
             </tr>
         </table>


</asp:Content>

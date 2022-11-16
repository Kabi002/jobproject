<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="educationreg.aspx.cs" Inherits="Mainproject.educationreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     .edu
        {
             background-color:darkslategray;
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
       .txtlog {
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
        
        .auto-style9 {
           width: 242px;
       }
       .auto-style10 {
           width: 242px;
           height: 60px;
       }
       .auto-style11 {
           width: 242px;
           height: 61px;
       }
       .auto-style12 {
           height: 61px;
       }
       .auto-style13 {
           width: 242px;
           height: 57px;
       }
       .auto-style14 {
           height: 57px;
       }
       .auto-style15 {
           width: 242px;
           height: 59px;
       }
       .auto-style16 {
           height: 59px;
       }
       .auto-style17 {
           width: 242px;
           height: 62px;
       }
       .auto-style18 {
           height: 62px;
       }
        
        .auto-style19 {
           background-color: #04AA6D;
           color: #04AA6D;
           padding: 16px 20px;
           cursor: pointer;
           border-style: none;
           border-color: inherit;
           border-width: medium;
           opacity: 0.9;
           background-color: gray;
           color: white;
           padding: 10px 20px;
           text-align: center;
           text-decoration: none;
           display: inline-block;
           margin: 4px 2px;
           cursor: pointer;
           border-radius: 16px;
       }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <center>
<%--            <asp:Label ID="msg" runat="server" Text=""></asp:Label>--%>
                            <h4>Please fill all the details here</h4>

            <table class="edu">
               
            <tr>
                <td class="auto-style10">College Name:</td>
                <td class="resumestyle">
                    <asp:TextBox ID="eclgname" runat="server"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                <td class="auto-style10">Enroll No:</td>
                <td class="resumestyle">
                    <asp:TextBox ID="eenrollno" runat="server"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                     <td class="auto-style10">
                        Semester:
                     </td>
                     <td class="resumestyle" >
                         <asp:DropDownList ID="esem" runat="server">
                             <asp:ListItem>select semester</asp:ListItem>
                             <asp:ListItem>1st Sem</asp:ListItem>
                             <asp:ListItem>2nd Sem</asp:ListItem>
                             <asp:ListItem>3rd Sem</asp:ListItem>
                             <asp:ListItem>4rd Sem</asp:ListItem>
                             <asp:ListItem>5th Sem</asp:ListItem>
                             <asp:ListItem>6th Sem</asp:ListItem>
                             <asp:ListItem>7th Sem</asp:ListItem>
                             <asp:ListItem>8th Sem</asp:ListItem>

                         </asp:DropDownList></td>
                     
                 </tr>
                <tr>
                     <td class="auto-style10">
                        Education:
                     </td>
                     <td class="resumestyle">
                         <asp:DropDownList ID="eeducation" runat="server">
                             <asp:ListItem>select stream</asp:ListItem>
                             <asp:ListItem>BE</asp:ListItem>
                             <asp:ListItem>B.Tech</asp:ListItem>
                             <asp:ListItem>BCA</asp:ListItem>
                             <asp:ListItem>B.Sc</asp:ListItem>
                        </asp:DropDownList></td>
                     
                 </tr>
                <tr>
                     <td class="auto-style11">
                        Branch:
                     </td>
                     <td class="auto-style12">
                         <asp:DropDownList ID="ebranch" runat="server">
                             <asp:ListItem>select Branch</asp:ListItem>
                             <asp:ListItem>COMPUTER SCIENCE</asp:ListItem>
                             <asp:ListItem>ARTS</asp:ListItem>
                             <asp:ListItem>MECHANCIAL</asp:ListItem>
                             <asp:ListItem>ELECTRICAL</asp:ListItem>
                        </asp:DropDownList></td>
                     
                 </tr>
                 <tr>
                     <td class="auto-style10">
                        Passing Year:
                     </td>
                     <td class="resumestyle">
                         <asp:DropDownList ID="epassyear" runat="server">
                             <asp:ListItem>select Year</asp:ListItem>
                             <asp:ListItem>2017</asp:ListItem>
                             <asp:ListItem>2018</asp:ListItem>
                             <asp:ListItem>2019</asp:ListItem>
                             <asp:ListItem>2020</asp:ListItem>
                             <asp:ListItem>2021</asp:ListItem>
                             <asp:ListItem>2022</asp:ListItem>
                             <asp:ListItem>2023</asp:ListItem>

                        </asp:DropDownList></td>
                     
                 </tr>
                <tr>
                <td class="auto-style13">CPI:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="ecpi" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td class="auto-style15">CGPA:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="ecgpa" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                     <td class="auto-style15">
                        Skill:
                     </td>
                     <td class="auto-style16">
                         <asp:DropDownList ID="eskill" runat="server">
                             <asp:ListItem>select skill</asp:ListItem>
                             <asp:ListItem>C</asp:ListItem>
                             <asp:ListItem>C++</asp:ListItem>
                             <asp:ListItem>.NET</asp:ListItem>
                             <asp:ListItem>JAVA</asp:ListItem>
                             <asp:ListItem>PYTHON</asp:ListItem>
                            

                        </asp:DropDownList></td>
                     
                 </tr>
                 <tr>
                <td class="auto-style10">Extra Skill:</td>
                <td class="resumestyle">
                    <asp:TextBox ID="eextraskill" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                    <td class="auto-style17">Resume:</td>

                    <td class="auto-style18"><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    
                   <!--- <td class="auto-style8"><asp:TextBox ID="FileUpload" runat="server"  type="file"></asp:TextBox></td>--->
                  <td class="auto-style18"> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td> 
                </tr>

                <tr>
                    <td>
                        <br />
                        <br />

                    </td>
                </tr>
          
            <tr>
                <td class="auto-style9">
                  <asp:Button ID="Button2" CssClass="btu" runat="server" Text="Reset" OnClick="Button2_Click" Width="100px" />

                </td>
                 <td >
                     <asp:Button ID="Button1" CssClass="btu" runat="server" Text="Submit" OnClick="Button1_Click" Height="41px" Width="136px"  />


                </td>
             
            </tr>
              </table>
        </center>
    <center>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
       
    </center>
    
</asp:Content>

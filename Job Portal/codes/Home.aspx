<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Mainproject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about{
            font-family:Algerian;
/*            background-color:burlywood;
*/            font-size:larger;
/*            background-image:url(home.jpg)
*/        }
        .auto-style2 {
            margin-bottom: 0px;

        }
        .img{
            width:400px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
   
    <!---- <center> <h3><img src="home.png" width=class="auto-style1"></h3></center>--->
 <!----  <img src="home.png"style="float:right" >--->
   
  <!----  <br />
    <br />

    <a href="Studentslogin.aspx">STUDENT LOGIN</a>&nbsp;&nbsp;
    <a href="companylogin.aspx">COMPANY LOGIN</a>--->


<!---<Center><a href="Studentlogin.aspx">STUDENTS LOGIN</a> </Center>-->
   <%-- <table class="about">
        <tr>
            <td>
                <br />
                <br />

            </td>
            
        </tr>
        <tr>
            <td>
                 <img class="img" src="home.jpg"/>
            </td>
            <td>
          The <b>online job portal system </b>is a platform between job seeker(student) and job provider(company). The Student or Job seeker can easily find and apply for job by login into system. 
          The Employer or company can easily get expert employee from our job portal site by posting a job.
          The job portal website is a common place between job seeker and company.

           When job seeker can login in his account then he can get notification of company lists which match with his profile  or education detail. 
           so job seeker can easily apply to this job and he can also send message to company for other inquiry.

           When company login in account, company or employer can get alert of job seeker lists which match with all criteria for posted job.
            </td>
        </tr>
    </table>--%>
    <table>
        <tr>
            <td>
                <br />
                <br />

            </td>
        </tr>
    </table>
    <div class="about">
          The <b>online job portal system </b>is a platform between job seeker(student) and job provider(company). The Student or Job seeker can easily find and apply for job by login into system. 
          The Employer or company can easily get expert employee from our job portal site by posting a job.
          The job portal website is a common place between job seeker and company.

           When job seeker can login in his account then he can get notification of company lists which match with his profile  or education detail. 
           so job seeker can easily apply to this job and he can also send message to company for other inquiry.

           When company login in account, company or employer can get alert of job seeker lists which match with all criteria for posted job.
    </div>
  
</asp:Content>

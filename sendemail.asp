<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
 <%
                     
       'EnquiryType = Request.ServerVariables("HTTP_Enq")
       'Name = Request.ServerVariables("HTTP_Name")
       'Email = Request.ServerVariables("HTTP_Email")
       'Number = Request.ServerVariables("HTTP_Number")
       'Detail = Request.ServerVariables("HTTP_Detail")
       
        Name = request.Form("nameTextbox")
        Email = request.Form("emailaddTextbox")
        Detail = request.Form("enqTextbox") 
       
        Dim ObjSendMail
        Set ObjSendMail = CreateObject("CDO.Message")
        ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
        ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "10.10.100.11"
        ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
        'ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = False  (True or False)
        ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
        'No need to authenticate, left as example
        ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
        ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "control@bctec.co.uk"
        ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="Blackout@25"
        ObjSendMail.Configuration.Fields.Update
        
        ObjSendMail.To = "info@davidbubb.co.uk"
        ObjSendMail.Subject = "Enquiry From Website "
        ObjSendMail.From = "info@davidbubb.co.uk"
        ObjSendMail.HTMLBody = "Name " & Name & "<br /><br />" & "Email Address: " & Email & "<br /><br />" & "Contact Number: " & Number & "<br /><br />" & "Enquiry: " & Detail
        On Error Resume Next
        ObjSendMail.Send
        Set ObjSendMail = Nothing
        
    %>

  </body>
</html>

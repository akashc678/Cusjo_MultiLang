<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<%--    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>
    <script src="Scripts/jq3.5.js"></script>
        <style>
        .dvhyperlinks
        {
          
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
        }
    </style>
</head>

    <script>
        function font_resize(act) {
            var actionType= document.getElementById("<%=DropDownList2.ClientID%>").value;  

            if (actionType == 'Small') {
                $("body").css("font-size", "15px");
            }
            else if (actionType == 'Mid') {
                $("body").css("font-size", "25px");
            }
            else if (actionType == 'Large') {
                $("body").css("font-size", "35px");
            }
        }

        function font_resize() {
            var actionType = document.getElementById("<%=DropDownList2.ClientID%>").value;

                    if (actionType == 'Small') {
                        $("body").css("font-size", "15px");
                    }
                    else if (actionType == 'Mid') {
                        $("body").css("font-size", "25px");
                    }
                    else if (actionType == 'Large') {
                        $("body").css("font-size", "35px");
                    }
        }


        function BoldandUnderLine()
        {
            var actionTypeForBold = document.getElementById("<%=DropDownList3.ClientID%>").value;
            if (actionTypeForBold == 'Yes') {
                $("body").css("font-weight", "bold");
                $("body").css("text-decoration", "underline");
            }
            else {
                $("body").css("font-weight", "normal");
                $("body").css("text-decoration", "none");
            }

        }
        //function GotoGoogle ()
        //{
        //    window.location.href("www.google.com");
        //}
        
    </script>
<body>
    <form id="form1" runat="server">
        <div id="TollBox" style="background-color:whitesmoke;">
               <asp:DropDownList ID="DropDownList2" runat="server" onchange="font_resize()" >
            <asp:ListItem Text="Select Size" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Small" Value="Small"></asp:ListItem>
                        <asp:ListItem Text="Mid" Value="Mid"></asp:ListItem>
                        <asp:ListItem Text="Large" Value="Large"></asp:ListItem>
                   </asp:DropDownList>

                           <asp:DropDownList ID="DropDownList3" runat="server" onchange="BoldandUnderLine()" >
            <asp:ListItem Text="Select Bold and Underline" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                   </asp:DropDownList>
        </div>
    <div>

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                    <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                        <asp:ListItem Text="Chinese" Value="Chinese"></asp:ListItem>
        </asp:DropDownList><br />
    </div>
        <asp:Label ID="par" runat="server" Text="<%$ Resources :par %>"></asp:Label>
        
        <div id="dvhyperlinks" class="hyperlinks" style="padding-top:10px;">
<%--            <a href="www.google.com" runat="server" id="hyperlinks" title=""></a>--%>
            <asp:HyperLink ID="Indexhyperlinks" NavigateUrl="Default2.aspx"  runat="server" Text="<%$ Resources :Indexhyperlinks %>"  ></asp:HyperLink>
        </div>

    </form>
</body>
</html>

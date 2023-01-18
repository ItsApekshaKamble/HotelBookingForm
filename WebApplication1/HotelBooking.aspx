<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HotelBooking.aspx.cs" Inherits="WebApplication1.HotelBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Bookings</title>
    <link rel="stylesheet" type="text/css" href="BookingStyle.css"/>
</head>

<body>
    
    <h1>Make Your Reservation</h1>
    <form id="form1" runat="server">
        
        <div class="panel-body">
            <div class="name">
                
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Full Name</b>
                <asp:TextBox ID="txtName" runat="server" required="required"  Enabled="True" Font-name="Ariel" class ="form-control input-sm" placeholder ="  Full Name"  ></asp:TextBox><br />
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtName">*</asp:RequiredFieldValidator>--%>
            </div>
            <div class="email">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Email ID</b>
                <asp:TextBox ID="txtmail" runat="server" required="required" TextMode="Email" Enabled="True" Font-name="Ariel" class ="form-control input-sm" placeholder ="  Enter Your Email ID" ></asp:TextBox><br />
            </div>
            <div class="phone">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Phone Number</b>
                <asp:TextBox ID="txtphone" runat="server" required="required" Enabled="True" Font-name="Ariel" class ="form-control input-sm" placeholder ="  Enter Your Phone Number"></asp:TextBox><br />
            </div>
            <div class="checkInDate">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Check In Date</b> <br />
                <asp:TextBox ID="txtcheckindate" runat="server" required="required" TextMode="Date" Enabled="True" Font-name="Ariel" class ="form-control input-sm" placeholder ="  dd/mm/yyyy" ></asp:TextBox><br />
            </div>
            <div class="checkInTime">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Check In Time</b> <br />
                <asp:TextBox ID="txtcheckintime" runat="server" required="required" TextMode="Time" Enabled="True" Font-name="Ariel" class ="form-control input-sm"  ></asp:TextBox><br />
            </div>
            <div class="checkOutDate">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Check Out Date</b> <br />
                <asp:TextBox ID="txtcheckoutdate" runat="server" required="required" TextMode="Date" Enabled="True" Font-name="Ariel" class ="form-control input-sm" placeholder ="  dd/mm/yyyy" ></asp:TextBox><br />
            </div>
            <div class="checkOutTime">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Check Out Time</b> <br />
                <asp:TextBox ID="txtchechouttime" runat="server" required="required" TextMode="Time" Enabled="True" Font-name="Ariel" class ="form-control input-sm" ></asp:TextBox><br />
            </div>
            <div class="roomPreference">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Room Preference</b>  <br />
                <asp:RadioButtonList ID="txtroomPreference" runat="server">
                <asp:ListItem style="font-family:Arial;" Text="Standard" />
                <asp:ListItem style="position:relative;left:200px;top:-25px;font-family:Arial;" Text="Deluxe" />
                <asp:ListItem style="position:relative;left:420px;top:-50px;font-family:Arial;" Text="Suite" />
                </asp:RadioButtonList>
            </div>
             <div class="noOfRooms">
                 <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Number Of Rooms</b> <br />
                <asp:TextBox ID="txtnoOfRooms" runat="server" required="required" TextMode="Number" min="0" Enabled="True" Font-name="Ariel" class ="form-control input-sm" placeholder="  Number Of Rooms" ></asp:TextBox><br />
            </div>
            <div class="adults">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Adults</b> <br />
                <asp:TextBox ID="txtadults" runat="server" required="required" TextMode="Number" min="0" Enabled="True" Font-name="Ariel" class ="form-control input-sm" placeholder="  Adults"></asp:TextBox><br />
            </div>
            <div class="children">
                <b style="position:relative;left:15px;bottom:5px;font-family:Arial;">Children</b>
                <br />
                <asp:TextBox ID="txtchildren" runat="server" required="required" TextMode="Number" min="0" Enabled="True" Font-name="Ariel" class ="form-control input-sm" placeholder="  Children"></asp:TextBox><br />
            </div>
            <div class="button">
                <asp:Button ID="Button1" runat="server" Text="BOOK NOW" OnClick="Button1_Click" />
            </div>
        </div>
        
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>

</html>

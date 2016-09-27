<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Knockout1.aspx.cs" Inherits="Knockout.Knockout1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>ASP.NET Single Page Application using Knockout</title>
</head>
    <H1>Welcome to my simple Knockout Page</H1>
    <H2>Please enter your name</H2>
<body>
    <form id="form1" runat="server">
        <hr />
        <div>
            <p>First Name : <asp:TextBox ID="txtUser" runat="server" data-bind="value: firstName, valueUpdate: 'keyup' " /></p>
            <p>Last Name : <asp:TextBox ID="txtPassword" runat="server" data-bind="value: lastName" /></p>
        </div>
        <hr />
        <p>Hello <span data-bind="text: fullName" /></p>
    </form>
    <script src="Scripts/knockout-2.3.0.js"></script>
    <script type = "text/javascript">
        var vm = {
           firstName: ko.observable("Tech"),
           lastName: ko.observable("Academy")
        };

        vm.fullName = ko.dependentObservable(function () {
            return vm.firstName() + "  " + vm.lastName()
        })

        vm.firstName.subscribe(function(val){
        console.log("First Name Updated as" + val);
        });

        vm.lastName.subscribe(function (val) {
            console.log("Last Name Updated as" + val);
        });

        ko.applyBindings(vm);
    </script>
</body>
</html>

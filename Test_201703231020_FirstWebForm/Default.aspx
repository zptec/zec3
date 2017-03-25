<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test_201703231020_FirstWebForm._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeaderContent">
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
<%--    <script type="text/javascript">
    function getProducts() {
        $.getJSON("api/v1/products",
            function (data) {
            //    $('#products').empty(); // Clear the table body.
            //    // Loop through the list of products.
            //    $.each(data, function (key, val) {
            //        // Add a table row for the product.
            //        var row = '<td>' + val.Name + '</td><td>' + val.Price + '</td>';
            //        $('<tr/>', { text: row })  // Append the name.
            //            .appendTo($('#products'));
            //    });
                $('#products').empty(); // Clear the table body.

                var dataHTML = "";

                // Loop through the list of products.
                $.each(data, function (key, val) {
                    
                    // Add a table row for the product.
                    dataHTML += '<tr><td>' + val.Name + '</td><td>' + val.Price + '</td></tr>';
                });

                $('#products').html(dataHTML);
            });
        }
        $(document).ready(getProducts);
    </script>--%> 
    <script type="text/javascript">
        function getPrices() {
            $.getJSON("https://yunbi.com/api/v2/tickers/zeccny.json",
                function (data) {
                    $('#prices').empty(); // Clear the table body.

                    var dataHTML = "";

                    dataHTML += '<tr><td>' + data.ticker.buy + '</td><td>' + data.ticker.sell
                        + '</td><td>' + data.ticker.low + '</td><td>' + data.ticker.high + '</td><td>'
                        + data.ticker.last + '</td><td>' + data.ticker.vol + '</td></tr>';

                    //// Loop through the list of products.
                    //$.each(data, function (key, val) {
                    //    // Add a table row for the product.
                    //    dataHTML += '<tr><td>' + val.ticker.buy + '</td><td>' + val.ticker.sell + '</td></tr>';
                    //});

                    $('#prices').html(dataHTML);
                });
        }
        $(document).ready(getPrices);
    </script>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <h2>Z³</h2>
    <table>
<%--    <thead>
        <tr><th>Name</th><th>Price</th></tr>
    </thead>
    <tbody id="products">
    </tbody>
    </table>
    <table>--%>
    <thead>
        <tr><th>Buy</th><th>Sell</th><th>Low</th><th>High</th><th>Last</th><th>Vol</th></tr>
    </thead>
    <tbody id="prices">
    </tbody>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/loja.Master" AutoEventWireup="true" CodeBehind="Pesquisar.aspx.cs" Inherits="ExCatalgoFinal_CatarinaSilva.Pesquisar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style31 {
        font-family: Arial;
        font-size: large;
    }
    .auto-style32 {
        font-family: Arial;
        font-size: 11pt;
        margin-top: 17;
    }
    .auto-style33 {
        font-weight: bold;
        font-size: small;
        color: #FFFFFF;
        font-family: Arial, Helvetica, sans-serif;
    }

    table#ContentPlaceHolder1_GridView1 {
    margin: 0 auto;
}

    th {
        text-align: center!important;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-center">
    &nbsp;</p>
<p class="text-center">
    <span class="auto-style31"><strong>PESQUISAR PRODUTOS </strong></span>
</p>
    <p class="text-center">
    <br />
</p>
<p class="text-center">
    <strong>&nbsp;&nbsp; </strong>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style32" Height="26px" Width="177px"></asp:TextBox>
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
    <asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="Ridge" CssClass="auto-style33" Text="PESQUISAR" Width="105px" />
</p>
<p class="text-center">
    &nbsp;</p>
<p class="text-center" id="tablespace">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="197px" Width="1000px" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
        <Columns>
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Preço" HeaderText="Preço" SortExpression="Preço" />
            <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Carecterísticas" HeaderText="Carecterísticas" SortExpression="Carecterísticas" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
        </Columns>
        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="500px" />
        <SelectedRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SortedDescendingHeaderStyle BackColor="#242121" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nome], [Preço], [Marca], [Tipo], [Carecterísticas], [Stock] FROM [produtos] WHERE ([Tipo] LIKE '%' + @Tipo + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Tipo" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p class="text-center">
    &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
<p class="text-center">
    <strong>AS NOSSAS MARCAS</strong></p>
<p class="text-center">
    &nbsp;</p>
</asp:Content>

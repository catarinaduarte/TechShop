<%@ Page Title="" Language="C#" MasterPageFile="~/loja.Master" AutoEventWireup="true" CodeBehind="inserir.aspx.cs" Inherits="ExCatalgoFinal_CatarinaSilva.inserir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style30 {
        color: #000000 !important;
        font-weight: bold;
    }
    .auto-style31 {
        font-size: large;
        font-weight: bold;
        text-align: center;
    }
    .auto-style32 {
        font-family: Arial;
        margin-bottom: 0px;
        margin: 0 auto !important;
    }

    

    span#ContentPlaceHolder1_FormView1_ImagemLabel {
    display: none !important;
}
        .auto-style33 {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #000000;
        }

        .text-justify {
    text-align: justify;
    transform: translateX(385px);
}

        input#ContentPlaceHolder1_FormView1_ImagemTextBox {
    width: 187px !important;
}
        span#ContentPlaceHolder1_FormView1_CarecterísticasLabel {
    display: block;
    
}

        input#ContentPlaceHolder1_FormView1_CarecterísticasTextBox {
    
    width: 187px;
    position: relative;
    left: 0px;
    margin-left: 4px;
}

        input#ContentPlaceHolder1_FormView1_StockTextBox {
    width: 187px;
    position: relative;
    left: 0px;
    margin-left: 6px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
<p class="auto-style31">
    INSERIR PRODUTOS</p>
    <div class="text-center">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="564px" OnPageIndexChanging="FormView1_PageIndexChanging" Width="948px" CssClass="auto-style32">
            <EditItemTemplate>
                <div class="text-center">
                    &nbsp;<strong><asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </strong>
                    <br />
                    <br />
                    <strong>Nome:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    <br />
                    <br />
                    <strong>&nbsp;Preço:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:TextBox ID="PreçoTextBox" runat="server" Text='<%# Bind("Preço") %>' />
                    <strong>
                    <br />
                    <br />
                    &nbsp;Marca:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;&nbsp;<asp:TextBox ID="MarcaTextBox" runat="server" Text='<%# Bind("Marca") %>' />
                    <strong>
                    <br />
                    <br />
                    &nbsp;Tipo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
                    <br />
                    <br />
                    <strong>&nbsp; Imagem:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;
                    <asp:TextBox ID="ImagemTextBox" runat="server" CssClass="auto-style32" Text='<%# Bind("Imagem") %>' Width="123px" />
                    <br />
                    <br />
                    <strong>&nbsp;Carecterísticas:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:TextBox ID="CarecterísticasTextBox" runat="server" CssClass="col-xs-offset-0" Text='<%# Bind("Carecterísticas") %>' />
                    <br />
                    <br />
                    <strong>&nbsp;Stock:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="auto-style30" Text="UPDATE" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="auto-style30" Text="CANCEL" />
                </div>
            </EditItemTemplate>
            <InsertItemTemplate>
                <strong>Id:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                <br />
                <strong>Nome:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                <br />
                <br />
                <strong>Preço:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="PreçoTextBox" runat="server" Text='<%# Bind("Preço") %>' />
                <br />
                <br />
                <strong>Marca:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="MarcaTextBox" runat="server" Text='<%# Bind("Marca") %>' />
                <br />
                <br />
                <strong>Tipo: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TipoTextBox" runat="server" Text='<%# Bind("Tipo") %>' />
                <br />
                <br />
                <strong>Imagem:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
                <br />
                <br />
                <strong>Carecterísticas:</strong>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="CarecterísticasTextBox" runat="server" Text='<%# Bind("Carecterísticas") %>' />
                <br />
                <br />
                <strong>Stock: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="auto-style33" />
                <span class="auto-style33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="auto-style34" Text="Cancel" style="color: #000000" />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <div class="text-justify">
                    <strong>Id:</strong>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    <br />
                    <strong>Nome:</strong>
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Bind("Nome") %>' />
                    <br />
                    <br />
                    <strong>Preço:</strong>
                    <asp:Label ID="PreçoLabel" runat="server" Text='<%# Bind("Preço") %>' />
                    <br />
                    <br />
                    <strong>Marca:</strong>
                    <asp:Label ID="MarcaLabel" runat="server" Text='<%# Bind("Marca") %>' />
                    <br />
                    <br />
                    <strong>Tipo:</strong>
                    <asp:Label ID="TipoLabel" runat="server" Text='<%# Bind("Tipo") %>' />
                    <br />
                    <br />
                    <strong>Imagem:</strong>
                    <asp:Label ID="ImagemLabel" runat="server" Text='<%# Bind("Imagem") %>' />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Imagem") %>' Width="100px" />
                    <br />
                    <br />
                    <br />
                    <strong>Carecterísticas: </strong>
                    <asp:Label ID="CarecterísticasLabel" runat="server" Text='<%# Bind("Carecterísticas") %>' />
                    <br />
                    <br />
                    <strong>Stock:</strong>
                    <asp:Label ID="StockLabel" runat="server" Text='<%# Bind("Stock") %>' />
                    <br />
                    <br />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" CssClass="auto-style30" Text="EDIT" />
                    <span class="auto-style30">&nbsp;&nbsp;&nbsp; &nbsp;</span><asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" CssClass="auto-style30" Text="DELETE" />
                    <span class="auto-style30">&nbsp;&nbsp;&nbsp; </span>
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="auto-style30" Text="NEW" />
                </div>
            </ItemTemplate>
        </asp:FormView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [produtos] WHERE [Id] = @Id" InsertCommand="INSERT INTO [produtos] ([Id], [Nome], [Preço], [Marca], [Tipo], [Imagem], [Carecterísticas], [Stock]) VALUES (@Id, @Nome, @Preço, @Marca, @Tipo, @Imagem, @Carecterísticas, @Stock)" SelectCommand="SELECT * FROM [produtos]" UpdateCommand="UPDATE [produtos] SET [Nome] = @Nome, [Preço] = @Preço, [Marca] = @Marca, [Tipo] = @Tipo, [Imagem] = @Imagem, [Carecterísticas] = @Carecterísticas, [Stock] = @Stock WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Preço" Type="String" />
            <asp:Parameter Name="Marca" Type="String" />
            <asp:Parameter Name="Tipo" Type="String" />
            <asp:Parameter Name="Imagem" Type="String" />
            <asp:Parameter Name="Carecterísticas" Type="String" />
            <asp:Parameter Name="Stock" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Preço" Type="String" />
            <asp:Parameter Name="Marca" Type="String" />
            <asp:Parameter Name="Tipo" Type="String" />
            <asp:Parameter Name="Imagem" Type="String" />
            <asp:Parameter Name="Carecterísticas" Type="String" />
            <asp:Parameter Name="Stock" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
</strong>
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="DetalhesProduto.aspx.vb" Inherits="WebDelivery.DetalhesProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="DetalhesObjectDataSource">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
            <br />
            Valor:
            <asp:TextBox ID="ValorTextBox" runat="server" Text='<%# Bind("Valor") %>' />
            <br />
            Descricao:
            <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
            <br />
            Foto:
            <asp:TextBox ID="FotoTextBox" runat="server" Text='<%# Bind("Foto") %>' />
            <br />
            Categoria:
            <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Atualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
            <br />
            Valor:
            <asp:TextBox ID="ValorTextBox" runat="server" Text='<%# Bind("Valor") %>' />
            <br />
            Descricao:
            <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
            <br />
            Foto:
            <asp:TextBox ID="FotoTextBox" runat="server" Text='<%# Bind("Foto") %>' />
            <br />
            Categoria:
            <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserir" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
&nbsp;<asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# Eval("Foto") %>' Width="400px" />
            <br />
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Bind("Nome") %>' />
            <br />
            Valor:
            <asp:Label ID="ValorLabel" runat="server" Text='<%# Bind("Valor", "{0:C}") %>' />
            <br />
            Descricao:
            <asp:Label ID="DescricaoLabel" runat="server" Text='<%# Bind("Descricao") %>' />
            <br />
            <br />
            Categoria:
            <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Bind("Categoria") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Excluir" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Novo" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="DetalhesObjectDataSource" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataById" TypeName="WebDelivery.DataSetDBSoutaiseirionTableAdapters.ComidasTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Valor" Type="Decimal" />
            <asp:Parameter Name="Descricao" Type="String" />
            <asp:Parameter Name="Foto" Type="String" />
            <asp:Parameter Name="Categoria" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int64" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Valor" Type="Decimal" />
            <asp:Parameter Name="Descricao" Type="String" />
            <asp:Parameter Name="Foto" Type="String" />
            <asp:Parameter Name="Categoria" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

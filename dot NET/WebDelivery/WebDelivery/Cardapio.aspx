<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="Cardapio.aspx.vb" Inherits="WebDelivery.Cardapio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="ObjectDataSourceComidas" GroupItemCount="3">
    <AlternatingItemTemplate>
        <td runat="server" style="background-color:#FFF8DC;">
            <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("Foto") %>' Width="200px" />
            <br />&nbsp;<asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
            <br />Valor:
            <asp:Label ID="ValorLabel" runat="server" Text='<%# Eval("Valor", "{0:C}") %>' />
            <br />Descricao:
            <asp:Label ID="DescricaoLabel" runat="server" Text='<%# Eval("Descricao") %>' />
            <br />Categoria:
            <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="Botao" NavigateUrl='<%# Eval("Id", "DetalhesProduto.aspx?id={0}") %>'>Selecionar</asp:HyperLink>
        </td>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">&nbsp;<asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Foto") %>' Width="200px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Nome") %>'></asp:Label>
            <br />Valor:
            <asp:TextBox ID="ValorTextBox" runat="server" Text='<%# Bind("Valor") %>' />
            <br />Descricao:
            <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
            <br />
            <br />Categoria:
            <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
            <br />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            <br /></td>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>Nenhum dado foi retornado.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <EmptyItemTemplate>
<td runat="server" />
    </EmptyItemTemplate>
    <GroupTemplate>
        <tr id="itemPlaceholderContainer" runat="server">
            <td id="itemPlaceholder" runat="server"></td>
        </tr>
    </GroupTemplate>
    <InsertItemTemplate>
        <td runat="server" style="">Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
            <br />Valor:
            <asp:TextBox ID="ValorTextBox" runat="server" Text='<%# Bind("Valor") %>' />
            <br />Descricao:
            <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
            <br />Foto:
            <asp:TextBox ID="FotoTextBox" runat="server" Text='<%# Bind("Foto") %>' />
            <br />Categoria:
            <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
            <br />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            <br /></td>
    </InsertItemTemplate>
    <ItemTemplate>
        <td runat="server" style="background-color:#DCDCDC;color: #000000;">&nbsp;<asp:Image ID="Image3" runat="server" Height="200px" ImageUrl='<%# Eval("Foto") %>' Width="200px" />
            <br />
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
            <br />Valor:
            <asp:Label ID="ValorLabel" runat="server" Text='<%# Eval("Valor", "{0:C}") %>' />
            <br />Descricao:
            <asp:Label ID="DescricaoLabel" runat="server" Text='<%# Eval("Descricao") %>' />
            <br />Categoria:
            <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="Botao" NavigateUrl='<%# Eval("Id", "DetalhesProduto.aspx?id={0}") %>'>Selecionar </asp:HyperLink>
        </td>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr id="groupPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />Nome:
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
            <br />Valor:
            <asp:Label ID="ValorLabel" runat="server" Text='<%# Eval("Valor") %>' />
            <br />Descricao:
            <asp:Label ID="DescricaoLabel" runat="server" Text='<%# Eval("Descricao") %>' />
            <br />Foto:
            <asp:Label ID="FotoLabel" runat="server" Text='<%# Eval("Foto") %>' />
            <br />Categoria:
            <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
            <br /></td>
    </SelectedItemTemplate>
</asp:ListView>
<asp:ObjectDataSource ID="ObjectDataSourceComidas" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebDelivery.DataSetDBSoutaiseirionTableAdapters.ComidasTableAdapter" UpdateMethod="Update">
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

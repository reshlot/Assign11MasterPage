<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="WebMasterPage.Articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h3 style="text-align:center">Welcome to Article Page</h3>
     <table class="w-100">
         <tr>
             <td>
                 <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>
                 <asp:GridView ID="GridViewArticle" runat="server" CellPadding="3" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" DataKeyNames="ArticleId" DataSourceID="SqlDataSource2">
                     <Columns>
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                         <asp:BoundField DataField="ArticleId" HeaderText="ArticleId" ReadOnly="True" SortExpression="ArticleId" />
                         <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                         <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
                         <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
                     </Columns>
                     <FooterStyle BackColor="White" ForeColor="#000066" />
                     <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                     <RowStyle ForeColor="#000066" />
                     <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F1F1F1" />
                     <SortedAscendingHeaderStyle BackColor="#007DBB" />
                     <SortedDescendingCellStyle BackColor="#CAC9C9" />
                     <SortedDescendingHeaderStyle BackColor="#00547E" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ContentDBConnectionString %>" DeleteCommand="DELETE FROM [Articles] WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))" InsertCommand="INSERT INTO [Articles] ([ArticleId], [Title], [Content], [PublishDate]) VALUES (@ArticleId, @Title, @Content, @PublishDate)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ContentDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Articles]" UpdateCommand="UPDATE [Articles] SET [Title] = @Title, [Content] = @Content, [PublishDate] = @PublishDate WHERE [ArticleId] = @original_ArticleId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Content] = @original_Content) OR ([Content] IS NULL AND @original_Content IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))">
                     <DeleteParameters>
                         <asp:Parameter Name="original_ArticleId" Type="Int32" />
                         <asp:Parameter Name="original_Title" Type="String" />
                         <asp:Parameter Name="original_Content" Type="String" />
                         <asp:Parameter Name="original_PublishDate" Type="DateTime" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="ArticleId" Type="Int32" />
                         <asp:Parameter Name="Title" Type="String" />
                         <asp:Parameter Name="Content" Type="String" />
                         <asp:Parameter Name="PublishDate" Type="DateTime" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="Title" Type="String" />
                         <asp:Parameter Name="Content" Type="String" />
                         <asp:Parameter Name="PublishDate" Type="DateTime" />
                         <asp:Parameter Name="original_ArticleId" Type="Int32" />
                         <asp:Parameter Name="original_Title" Type="String" />
                         <asp:Parameter Name="original_Content" Type="String" />
                         <asp:Parameter Name="original_PublishDate" Type="DateTime" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
             </td>
             <td>&nbsp;</td>
         </tr>
     </table>
</asp:Content>


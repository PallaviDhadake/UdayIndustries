<%@ Page Title="Case Study | Uday Group Of Industries" Language="C#" MasterPageFile="~/adminpanel/MasterAdmin.master" AutoEventWireup="true" CodeFile="case-study.aspx.cs" Inherits="adminpanel_case_study" %>

<%@ MasterType VirtualPath="~/adminpanel/MasterAdmin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            $('[id$=gvCaseStudy]').DataTable({
                columnDefs: [
                    { orderable: false, targets: [0, 1, 2, 3, 4, 5, 6] }
                ],
                order: [[0, 'desc']]
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 class="pgTitle">Case Study Master</h2>
    <span class="space10"></span>
    <asp:UpdatePanel ID="UpdatePanel" runat="server">
        <ContentTemplate>
            <div id="editCase" runat="server">

                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title"><%=pgTitle %></h3>
                    </div>
                    <%-- Card Body --%>
                    <div class="card-body">
                        <div class="colorLightBlue">
                            <%--<span>Id</span>--%>
                            <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                        </div>
                        <span class="space15"></span>
                        <%-- From Row Start --%>
                        <div class="form-row">
                            <div class="form-group col-md-6">

                                <label>Author Name:*</label>
                                <asp:TextBox ID="txtAuthorName" runat="server" CssClass="form-control" Width="100%" MaxLength="50"></asp:TextBox>
                            </div>

                            <div class="form-group col-md-6">
                                <label>Case Title:*</label>
                                <asp:TextBox ID="txtCaseTitle" runat="server" CssClass="form-control" Width="100%"
                                    MaxLength="200"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Case Description :*</label>
                                <asp:TextBox ID="txtCaseDesc" runat="server" CssClass="form-control textarea" Height="200px" Width="100%" TextMode="MultiLine" MaxLength="400"></asp:TextBox>
                            </div>

                         
                        </div>
                    </div>
                </div>
                <!-- Button controls starts -->
                <span class="space10"></span>
                <span class="space10"></span>
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-outline-info" Text="Delete" OnClientClick="return confirm('Are you sure to delete?');" OnClick="btnDelete_Click" />
                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="btnCancel_Click" />
                <div class="float_clear"></div>
                <!-- Button controls ends -->
                <%--</ContentTemplate>
		</asp:UpdatePanel>--%>
            </div>
            <div id="viewCase" runat="server">
                <a href="case-study.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>
                <%--<a href="contactdata.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>--%>
                <span class="space20"></span>
                <div class="formPanel table-responsive-md">
                    <asp:GridView ID="gvCaseStudy" runat="server" CssClass="table table-striped table-bordered table-hover" GridLines="None"
                        AutoGenerateColumns="false" OnRowDataBound="gvCaseStudy_RowDataBound">
                        <HeaderStyle CssClass="thead-dark" />
                        <RowStyle CssClass="" />
                        <AlternatingRowStyle CssClass="alt" />
                        <Columns>
                            <asp:BoundField DataField="csId">
                                <HeaderStyle CssClass="HideCol" />
                                <ItemStyle CssClass="HideCol" />
                            </asp:BoundField>

                            <asp:BoundField DataField="csDate" HeaderText="Date">
                                <ItemStyle Width="5%" />
                            </asp:BoundField>

                            <asp:BoundField DataField="csTitle" HeaderText="Case Title">
                                <ItemStyle Width="40%" />
                            </asp:BoundField>

                            <asp:BoundField DataField="csAuthorName" HeaderText="Author Name">
                                <ItemStyle Width="40%" />
                            </asp:BoundField>

                            <asp:BoundField DataField="viewCount" HeaderText="Views">
                                <ItemStyle Width="5%" />
                            </asp:BoundField>

                            <asp:TemplateField>
                                <ItemStyle Width="5%" />
                                <ItemTemplate>
                                    <asp:Literal ID="litAnch" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemStyle Width="5%" />
                                <ItemTemplate>
                                    <asp:Literal ID="litAddPhotos" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <span class="warning">Its Empty Here... :(</span>
                        </EmptyDataTemplate>
                        <PagerStyle CssClass="" />
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
        <%--  <Triggers>
            <asp:PostBackTrigger ControlID="btnSubmit" />
        </Triggers>--%>
    </asp:UpdatePanel>
</asp:Content>


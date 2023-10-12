<%@ Page Title="Case Study Photos" Language="C#" MasterPageFile="~/adminpanel/MasterAdmin.master" AutoEventWireup="true" CodeFile="case-study-photos.aspx.cs" Inherits="adminpanel_case_study_photos" %>
<%@ MasterType VirtualPath="~/adminpanel/MasterAdmin.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .closeAnch{background:url(images/icons/deleteIco.png) no-repeat center center; display:block; height:20px; width:20px; position:absolute; top:5px; right:5px  }
        .imgBox{ float:left;position:relative }
        .imgContainer{ height:200px !important; width:200px; overflow:hidden !important; }
        .w100{ width:100% }
        .pad-5{ padding:5px }
        .border1{ border:1px solid #ececec }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="pgTitle">Add Photos</h2>
    <span class="space15"></span>


    <div class="card card-primary">
			<div class="card-header">
				<h3 class="card-title">Add Photos to Case Study</h3>
			</div>
			<%-- Card Body --%>
			<div class="card-body">
			<span class="formLable dspBlk mrgBtm10">Select Case Title:</span>
            <asp:DropDownList ID="ddrCasePhotos" CssClass="txtBox" Width="600" 
                runat="server" AutoPostBack="True" 
                onselectedindexchanged="ddrCasePhotos_SelectedIndexChanged">
                <asp:ListItem Value="0"><-Select-></asp:ListItem>
            </asp:DropDownList>
            <span class="space10"></span>
            <span class="formLable dspBlk mrgBtm10">Select Photo:</span>
            <asp:FileUpload ID="fuImage" runat="server" />
            <span class="space10"></span>
			</div>
		</div>


    <span class="space20"></span>
    <%--<%= errMsg %>--%>
    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click"  />
    <div class="float_clear"></div>
    <span class="space20"></span>
    <div class="float_clear"></div>
    <div class="spacer"></div>
    <%=photoMarkup %>
    <div class="float_clear"></div>
</asp:Content>


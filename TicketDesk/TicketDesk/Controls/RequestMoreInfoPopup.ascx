﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RequestMoreInfoPopup.ascx.cs" Inherits="TicketDesk.Controls.RequestMoreInfoPopup" %>
<%  // TicketDesk - Attribution notice
    // Contributor(s):
    //
    //      Stephen Redd (stephen@reddnet.net, http://www.reddnet.net)
    //
    // This file is distributed under the terms of the Microsoft Public 
    // License (Ms-PL). See http://www.codeplex.com/TicketDesk/Project/License.aspx
    // for the complete terms of use. 
    //
    // For any distribution that contains code from this file, this notice of 
    // attribution must remain intact, and a copy of the license must be 
    // provided to the recipient.
%>
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
</asp:ScriptManagerProxy>

<asp:Button ID="ShowMoreInfoButton" CausesValidation="false" runat="server" Text="Request More Info" />
<ajaxToolkit:ModalPopupExtender BehaviorID="moreInfoBH" ID="MoreInfoModalPopupExtender"
    runat="server" TargetControlID="ShowMoreInfoButton" PopupControlID="MoreInfoPanel"
    BackgroundCssClass="ModalBackground" CancelControlID="CancelMoreInfoButton"
    DropShadow="true" PopupDragHandleControlID="MoreInfoPanelHandle" />
<asp:Panel ID="MoreInfoPanel" runat="server" CssClass="ModalPopup" Style="display: none;">
    <div style="border: solid 1px #A0A0A0;">
        <asp:Panel ID="MoreInfoPanelHandle" runat="server" Style="cursor: move; border-bottom: solid 1px #A0A0A0;">
            <div class="ModalPopupHandle">
                Do you want to request more information from the owner of this ticket?<br />
                
            </div>
        </asp:Panel>
        <div style="padding:5px;">
           
           
            <br />
            Comments (required): <asp:RequiredFieldValidator ID="CommentsRequiredValidator" runat="server" 
            Display="Dynamic" ControlToValidate="CommentsTextBox" ValidationGroup="MoreInfoPopup" Text="*" ErrorMessage="Comments are required" /><br />
            <asp:TextBox ValidationGroup="MoreInfoPopup" ID="CommentsTextBox" TextMode="MultiLine" Rows="5" runat="server" Width="100%" />
            <br />
            <asp:Button ID="MoreInfoButton" ValidationGroup="MoreInfoPopup" OnClick="MoreInfoButton_Click"
                runat="server" Text="Request More Info" />
            <asp:Button ID="CancelMoreInfoButton" CausesValidation="false" ValidationGroup="MoreInfoPopup"
                runat="server" Text="Nevermind" />
        </div>
    </div>
</asp:Panel>
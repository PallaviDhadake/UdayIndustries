using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
public partial class adminpanel_video_gallery : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle, videoPreview;
    protected void Page_Load(object sender, EventArgs e)
    {
        pgTitle = Request.QueryString["action"] == "new" ? "Add Videos" : "Edit Videos";
        btnSave.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
        btnDelete.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");
        btnCancel.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");

        if (!IsPostBack)
        {
            if (Request.QueryString["action"] != null)
            {
                editVideo.Visible = true;
                viewVideo.Visible = false;

                if (Request.QueryString["action"] == "new")
                {
                    btnSave.Text = "Save Info";
                    btnDelete.Visible = false;
                }
                else
                {
                    btnSave.Text = "Modify Info";
                    btnDelete.Visible = true;
                    GetVideoData(Convert.ToInt32(Request.QueryString["id"]));
                }
            }
            else
            {
                editVideo.Visible = false;
                viewVideo.Visible = true;
                FillGrid();
            }
        }
        lblId.Visible = false;
    }


    private void FillGrid()
    {
        try
        {
            using (DataTable dtVideos = c.GetDataTable("Select vidId, vidTitle, LEFT(vidInfo, 70) as vidInfo, vidLink From VideoGallery Where DelMark=0 Order By vidId Desc"))
            {
                gvVideo.DataSource = dtVideos;
                gvVideo.DataBind();

                if (dtVideos.Rows.Count > 0)
                {
                    gvVideo.UseAccessibleHeader = true;
                    gvVideo.HeaderRow.TableSection = TableRowSection.TableHeader;
                }

            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "FillGrid", ex.Message.ToString());
            return;
        }
    }



    protected void gvVideo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = new Literal();
                litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=video-gallery.aspx?action=edit&id=" + e.Row.Cells[0].Text + " class=\"gAnch\" ></a>";


                Literal litVideoLink = new Literal();
                litVideoLink = (Literal)e.Row.FindControl("litVideoLink");
                litVideoLink.Text = "<a href=\"https://www.youtube.com/watch?v=" + e.Row.Cells[1].Text + "\" target=\"_blank\" class=\"txtDecNone\">Watch Video</a>";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "FillGrid", ex.Message.ToString());
            return;
        }
    }



    public void GetAllControls(ControlCollection ctrs)
    {
        foreach (Control c in ctrs)
        {
            if (c is System.Web.UI.WebControls.TextBox)
            {
                TextBox tt = c as TextBox;
                tt.Text = tt.Text.Trim().Replace("'", "");
            }
            if (c.HasControls())
            {
                GetAllControls(c.Controls);
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            //txtTitle.Text = txtTitle.Text.Trim().Replace("'", "");
            //txtDesc.Text = txtDesc.Text.Trim().Replace("'", "");
            //txtVideoLink.Text = txtVideoLink.Text.Trim().Replace("'", "");

            if (txtVidTitle.Text == "" || txtVidDesc.Text == "" || txtVidLink.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * Fields are mandatory');", true);
                return;
            }

            int maxId = lblId.Text == "[New]" ? c.NextId("VideoGallery", "vidId") : Convert.ToInt32(Request.QueryString["id"]);

            string vidLink = "";
            if (txtVidLink.Text != "")
            {
                if (txtVidLink.Text.Contains("www.youtube.com") == true)
                {
                    string[] arrLink = txtVidLink.Text.Split('/');
                    string[] arrKey = arrLink[arrLink.Length - 1].Split('=');

                    vidLink = arrKey[arrKey.Length - 1];
                }
                else
                {
                    if (lblId.Text == "[New]")
                    {
                        //ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Invalid video link entered', type: 'warning'});", true);
                        //return;

                        ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Invalid video link entered');", true);
                        return;
                    }
                }
            }

           // int testiFlag = chkTesti.Checked == true ? 1 : 0;

            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert Into VideoGallery (vidId, vidTitle, vidLink, vidInfo, DelMark) Values (" + maxId + ", N'" + txtVidTitle.Text + "', '" + vidLink + "', N'" + txtVidDesc.Text + "', 0)");

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Video  Added');", true);

                //ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Video Added', type: 'success'});", true);
            }
            else
            {
                c.ExecuteQuery("Update VideoGallery Set vidTitle=N'" + txtVidTitle.Text + "', vidLink='" + vidLink + "', vidInfo=N'" + txtVidDesc.Text + "',  Where vidId=" + maxId);

                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Video  updated');", true);

                //ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "showNotification({message: 'Video updated', type: 'success'});", true);
            }

            txtVidDesc.Text = txtVidTitle.Text = txtVidLink.Text = "";
           // ScriptManager.RegisterClientScriptBlock(this, GetType(), "rdrScript", "waitAndMove('video-gallery.aspx' , 2000);", true);

            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('video-gallery.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }


    public void GetVideoData(int VidIdx)
    {
        try
        {
            using (DataTable dtVid = c.GetDataTable("select * from VideoGallery where vidId=" + VidIdx))
            {
                if (dtVid.Rows.Count > 0)
                {
                    DataRow row = dtVid.Rows[0];
                    lblId.Text = VidIdx.ToString();
                    txtVidDesc.Text = row["vidInfo"].ToString();
                    txtVidTitle.Text = row["vidTitle"].ToString();


                    if (row["vidLink"] != DBNull.Value && row["vidLink"].ToString() != "")
                    {
                        txtVidLink.Text = "www.youtube.com/watch?v=" + row["vidLink"].ToString();
                    }
                    else
                    {
                        txtVidLink.Text = "";
                    }

                    if (row["vidLink"] != DBNull.Value && row["vidLink"] != null && row["vidLink"].ToString() != "")
                    {
                        txtVidLink.Text = "www.youtube.com/watch?v=" + row["vidLink"].ToString();

                        videoPreview = "<iframe width=\"400\" height=\"220\" src=\"https://www.youtube.com/embed/" + row["vidLink"].ToString() + "\"frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\"allowfullscreen></iframe>";

                    }

                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "GetNewsData", ex.Message.ToString());
            return;
        }
    }


    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("Update VideoGallery set DelMark=1 where vidId=" + Request.QueryString["id"]);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Record Deleted');", true);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('video-gallery.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnDelete_Click", ex.Message.ToString());
            return;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("video-gallery.aspx");
    }


}
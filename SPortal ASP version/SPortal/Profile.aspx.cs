﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using BLL;

namespace SPortal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cookie.SetSessionFromCookie(this);
            if (Session["User"] == null)
            {
                Response.Redirect("Register.aspx");
            }
            else
            {
                InitialiseProfile(Session["User"].ToString());
            }
        }

        /// <summary>
        /// Dynamically add a Post to the Page.
        /// (All posts can be seen from the active users Timeline)
        /// </summary>
        private void LoadPost(Post post)
        {
            #region Creating Controls

            // Post Container
            Panel postContainer = new Panel();

            // Post Heading Container
            Panel postHeadingContainer = new Panel();
            Label[] postHeadings = new Label[3];
            Table table1 = new Table();
            table1.Attributes.Add("style", "width: 100%;margin-left: 2em;margin-top: 0.5em;");
            Table table2 = new Table();
            table2.Attributes.Add("style", "margin-top: -1em;margin-left: 2em;margin-bottom: 0.5em;");
            TableRow tRow = new TableRow();
            TableCell tCell = new TableCell();
            postHeadings[0] = new Label();
            postHeadings[1] = new Label();
            postHeadings[2] = new Label();

            // Post Content Container
            Panel postContentContainer = new Panel();
            Label postContent = new Label();

            // Post Buttons Container
            Panel postButtonsContainer = new Panel();
            ImageButton[] buttons = new ImageButton[3];
            buttons[0] = new ImageButton();
            buttons[1] = new ImageButton();
            buttons[2] = new ImageButton();

            HiddenField postIdField = new HiddenField();

            #endregion

            #region Filling Controls

            postContainer.Attributes.Add("style","margin-bottom: 1em; margin-left: 1em;padding-left: 0em;padding-right: 1em;border-color: dimgrey;border-width: 1px;border-style: solid;background-image: url('../images/Pixel-575757-50.png');background-repeat: repeat;border-radius: 0.5em;width: 93%;float: left");

            int years = 0;
            int months = 0;
            int weeks = 0;
            int days = 0;
            int hours = 0;
            int minutes = 0;

            postHeadingContainer.Attributes.Add("class", "postHeading");
            postHeadings[0].Attributes.Add("style", "float: left");
            postHeadings[0].Text = string.Format("POST ID: {0}", post.Id);
            postHeadings[1].Attributes.Add("style", "float: right;");
            postHeadings[1].Text = (DateTime.Now.ToString());
            postHeadings[2].Text = string.Format("<br/>Topic: {0}", Post.GetPostTopicName(post.Id));

            tCell.Attributes.Add("style", "width: 80%; color: rgb(158, 158, 158)");
            tCell.Text = postHeadings[0].Text;
            tRow.Cells.Add(tCell);
            tCell = new TableCell();
            tCell.Text = postHeadings[1].Text;
            tCell.Attributes.Add("style", "float: right; width: auto; color: rgb(158, 158, 158)");
            tRow.Cells.Add(tCell);
            table1.Rows.Add(tRow);

            tRow = new TableRow();
            tCell = new TableCell();
            tCell.Text = postHeadings[2].Text;
            tCell.Attributes.Add("style", "width: 100%;");
            tRow.Cells.Add(tCell);
            table2.Rows.Add(tRow);

            postContentContainer.Attributes.Add("class", "postContentContainer");
            if (post.Text.Length <= 350)
                postContentContainer.Attributes.Add("style", "height: auto;");
            postContent.Text = post.Text;
            postContent.Attributes.Add("class", "postContent");

            postButtonsContainer.Attributes.Add("class", "postButtonsContainer");
            foreach (var button in buttons)
            {
                button.ImageUrl = "img-demo/NewButtonsComment.png";
                button.Width = 103;
                button.Height = 33;
                button.Attributes.Add("class", "postButton");
            }

            postIdField.Value = post.Id.ToString();

            #endregion

            #region Adding Controls

            //postHeadingContainer.Controls.Add(postHeadings[0]);      // Adding the Heading Controls to the Post Container
            //postHeadingContainer.Controls.Add(postHeadings[2]);
            //postHeadingContainer.Controls.Add(postHeadings[1]);
            postHeadingContainer.Controls.Add(table1);
            postHeadingContainer.Controls.Add(table2);
            postContainer.Controls.Add(postHeadingContainer);

            postContentContainer.Controls.Add(postContent); // Adding the Post Content
            postContainer.Controls.Add(postContentContainer);

            foreach (var button in buttons)
            {
                postButtonsContainer.Controls.Add(button);
            }
            postContainer.Controls.Add(postButtonsContainer);
            postContainer.Controls.Add(postIdField);

            pnlTimelineContainer.Controls.Add(postContainer);

            #endregion
        }

        public void InitialiseProfile(string username)
        {
            BLL.User user = BLL.User.GetUserByUsername(username);

            if (user != null)
            {
                string rootPath = HttpContext.Current.Request.PhysicalApplicationPath;


                if (File.Exists(rootPath + "images/ProfilePictures/" + user.Picture))
                    imgProfilePicture.ImageUrl = "~/images/ProfilePictures/" + user.Picture;
                else
                    imgProfilePicture.ImageUrl = "~/images/ProfilePictures/default.png"; // Use the default picture

                lblUsername.Text = user.Username;
                lblProfileName.Text = string.Format("{0} {1}", user.Name, user.Surname);
                lblProfileBirthday.Text = user.DOB.ToLongDateString();
                lblProfileGender.Text = "Not Specified";
                lblProfileStatus.Text = "Not Specified";
                lblProfileEmail.Text = user.Email;
                lblProfileInstitution.Text = user.Institution;

                List<Post> posts = Post.GetPostsByUser(username);

                foreach (Post post in posts)
                {
                    LoadPost(post);
                }
            }
            else
            {
                Cookie.SetCookie(this.Page, "SPortalUsername", username, -2);
                Session["User"] = null;
                Response.Redirect("Index.aspx");
            }
        }
    }
}
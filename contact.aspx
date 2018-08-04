<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <center><h2 style="color: rebeccapurple";>Need help? <br />Or provide feedback</h2></center>
     <div class="contact-us">
       <div class="container">
          <div class="contact-form">
           <div class="row">
               <div class="col-sm-7">                  
                    <form id="ajax-contact"  method="post" action="contact-form-mail.php" role="form">
                        <div class="messages" id="form-messages"></div>
                        <div class="controls">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_name"></label>
                                        <input id="form_name" type="text" name="name" class="form-control" placeholder="First Name" required="required" data-error="Firstname is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_lastname"></label>
                                        <input id="form_lastname" type="text" name="surname" class="form-control" placeholder="Last Name" required="required" data-error="Lastname is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_email"></label>
                                        <input id="form_email" type="email" name="email" class="form-control" placeholder="Email" required="required" data-error="Valid email is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_phone"></label>
                                        <input id="form_phone" type="tel" name="phone"  class="form-control" placeholder="Phone Number" required oninvalid="setCustomValidity('Plz enter your correct phone number ')"
    onchange="try{setCustomValidity('')}catch(e){}">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="form_message"></label>
                                        <textarea id="form_message" name="message" class="form-control" placeholder="Messages" rows="4" required="required" data-error="Please,leave us a message."></textarea>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <input type="submit" class="btn btn-outline-secondary" value="Send message">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                   <br>
                                  
                                </div>
                            </div>
                        </div>

                    </form>
    
               </div>
               <div class="col-sm-5">
                   <div class="row col1">
                       <div class="col-xs-3">
                           <i class="fa fa-map-marker" style="font-size:16px;"></i>   Address
                       </div>
                       <div class="col-xs-9">
                            TKC, Inc.<br> 1155 Union Cir, Denton, TX 76203
                       </div>
                   </div>
                   
                    <div class="row col1">
                        <div class="col-sm-3">
                            <i class="fa fa-phone"></i>   Phone
                        </div>
                        <div class="col-sm-9">
                             888-888-8888
                        </div>
                    </div>
                    <div class="row col1">
                        <div class="col-sm-3">
                             <i class="fa fa-facebook"></i> 
                            <i class="fa fa-twitter"></i> 
                                  
                        </div>
                        <div class="col-sm-9">      
                        </div>
                    </div>
                    <div class="row col1">
                        <div class="col-sm-3">
                            <i class="fa fa-envelope"></i>   Email
                        </div>
                        <div class="col-sm-9">
                             <a href="mailto:info@yourdomain.com">info@tkc.com</a> <br> <a href="mailto:support@yourdomain.com">support@tkc.com</a>
                        </div>
                    </div><br>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13353.008172171241!2d-97.1525862!3d33.207488!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbbd9f45fa47690a!2sUniversity+of+North+Texas!5e0!3m2!1sen!2sus!4v1493102592850" width="100%" height="230" frameborder="0" style="border:0" allowfullscreen></iframe>     
          </div>
       </div>
   </div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>


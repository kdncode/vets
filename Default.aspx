<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="showcase">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6">
            <div class="showcase-left">
              <img src="img/bg.png" alt ="Background image" style="height:700px; width: 1145px;  
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">
            </div>
          </div>
          <div class="col-md-6 col-sm-6">
            <div class="showcase-right">
              <h1>No one left behind!</h1>
                <p>We need your help to keep our Lifeline for Veterans operating. Please support or contribute what you can.</p>
            </div><br>
             <a href="products.aspx"><button type="button" class="btn btn-outline-secondary">Shop Now</button></a>
          </div>
        </div>
      </div>  
    </section>

    <section id="testimonial">
      <div class="container">
        <p>"It's good to know that people care about me while I'm deployed, and even better to know that a veteran is getting the help they need as a result."</p>
        <p class="customer">- John Doe (Recipient of a care package)</p>
      </div>
    </section>

    <section id="info1">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <div class="info-left">
              <img src="img/bg2.png" style="width:1145px; height:700px;">
            </div>
          </div>
          <div class="col-md-6 col-sm-6">
            <div class="info-right">
              <h1>We help vets & their families</h1>
                <h3>Save A Vet. Make A Donation.</h3><br />
              <a href="Donate.aspx"><button type="button" class="btn btn-outline-secondary">Donate Now</button></a>
            </div>
          </div>
        </div>
      </div>
    </section><hr>
    
    <section id="info2">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <div class="info-left">
              <h2>Care Packages</h2>
              <p>Our main method of raising funds is the sale of care packages that you buy on behalf of deployed military personnel that we then deliver.  There are multiple options to choose from so that it will fit into your budget.</p>
            </div>
          </div>
          <div class="col-md-6 col-sm-6">
            <div class="info-right">
              <h2>Donations</h2>
              <p>We can't help unless you help. We are a non-profit organization that depends on the generosity of supporters like you. Please make a tax-deductible donation today.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
          </div>
        </div>
      </div>
    </section>

<script
src="https://code.jquery.com/jquery-3.2.1.js"
integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
indow.sr = ScrollReveal();
sr.reveal('.navbar', {
    duration: 2000,
    origin:'bottom'
});
sr.reveal('.showcase-left', {
    duration: 2000,
    origin:'top',
    distance:'300px'
});
sr.reveal('.showcase-right', {
    duration: 2000,
    origin:'right',
    distance:'300px'
});
sr.reveal('.showcase-btn', {
    duration: 2000,
    delay: 2000,
    origin:'bottom'
});
sr.reveal('#testimonial div', {
    duration: 2000,
    origin:'bottom'
});
sr.reveal('.info-left', {
    duration: 2000,
    origin:'left',
    distance:'300px',
    viewFactor: 0.2
});
sr.reveal('.info-right', {
    duration: 2000,
    origin:'right',
    distance:'300px',
    viewFactor: 0.2
});
</script>

<script>
$(function() {
    // Smooth Scrolling
    $('a[href*="#"]:not([href="#"])').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
                $('html, body').animate({
                    scrollTop: target.offset().top
                }, 1000);
                return false;
            }
        }
    });
});
</script>

</asp:Content>


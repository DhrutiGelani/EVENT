<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="EVENT_MS.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>

.contact-area {
    padding: 50px 0;
    background: linear-gradient(135deg, #eef2f3, #dfe9f3);
    font-family: 'Segoe UI', sans-serif;
}

.container-contact {
    width: 85%;
    margin: auto;
}

.row-contact {
    display: flex;
    justify-content: center;
}

/* Form Wrapper */
.contact-form-wrapper {
    background: #fff;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
    max-width: 800px;
    width: 100%;
}

.contact-title {
    text-align: center;
    margin-bottom: 25px;
    font-size: 1.8rem;
    color: #333;
}

/* Inputs & Textarea */
.form-row {
    display: flex;
    gap: 15px;
    flex-wrap: wrap;
}

.form-group {
    flex: 1;
    min-width: 200px;
}

.form-group-full {
    margin-top: 15px;
}

.form-input, .form-textarea {
    width: 100%;
    padding: 12px;
    border-radius: 8px;
    border: 1px solid #ccc;
    font-size: 1rem;
    transition: 0.3s;
}

.form-input:focus, .form-textarea:focus {
    border-color: #4ca1af;
    box-shadow: 0px 0px 8px rgba(76, 161, 175, 0.3);
    outline: none;
}

/* Button */
.form-btn {
    width: 100%;
    padding: 12px;
    background: #4ca1af;
    color: #fff;
    font-size: 1.1rem;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s;
}

.form-btn:hover {
    background: #357f87;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Contact - Leadership Event HTML5 Bootstrap v5 Template</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/templatemo-leadership-event.css" rel="stylesheet">
        <link href="css/page-transitions.css" rel="stylesheet">
        
<!--

TemplateMo 575 Leadership Event

https://templatemo.com/tm-575-leadership-event

-->
    </head>
    
    <body>

   

        <main>

            <section class="hero" id="section_1">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-5 col-12 m-auto">
                            <div class="hero-text">

                                <h1 class="text-white mb-4"><u class="text-info">Get In</u> Touch</h1>

                                <div class="d-flex justify-content-center align-items-center">
                                    <span class="date-text">July 12 to 18, 2022</span>

                                    <span class="location-text">Times Square, NY</span>
                                </div>

                                <a href="#contact-section" class="custom-link bi-arrow-down arrow-icon"></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="video-wrap">
                    <video autoplay="" loop="" muted="" class="custom-video" poster="">
                        <source src="videos/pexels-pavel-danilyuk-8716790.mp4" type="video/mp4">

                        Your browser does not support the video tag.
                    </video>
                </div>
            </section><br />
        <section class="contact-area" id="contact">
            <div class="container-contact">
                <div class="row-contact">
                    <div class="contact-form-wrapper">
                        <h2 class="contact-title">Get in Touch</h2>

                        <div class="form-row">
                            <div class="form-group">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-input" Placeholder="Your Name" required></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" Placeholder="Your Email" TextMode="Email" required></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-input" Placeholder="Subject"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group-full">
                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-textarea" TextMode="MultiLine" Rows="5" Placeholder="Your Message"></asp:TextBox>
                        </div>

                        <div class="form-group-full">
                            <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="form-btn" OnClick="btnSubmit_Click" />
                        </div>

                        <asp:Label ID="lblStatus" runat="server" ForeColor="Green"></asp:Label>
                    </div>
                </div>
            </div>
        </section>


            <!--<section class="contact section-padding" id="contact-section">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 col-12 mx-auto">
                            <form class="custom-form contact-form bg-white shadow-lg" action="#" method="post" role="form">
                                <h2>Please Say Hi</h2>

                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-12">                                    
                                        <input type="text" name="name" id="name" class="form-control" placeholder="Name" required="">
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-12">         
                                        <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email" required="">
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-12">                                    
                                        <input type="text" name="subject" id="subject" class="form-control" placeholder="Subject">
                                    </div>

                                    <div class="col-12">
                                        <textarea class="form-control" rows="5" id="message" name="message" placeholder="Message"></textarea>

                                        <button type="submit" class="form-control">Submit</button>
                                    </div>

                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </section>-->

            <section class="venue section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                            <h2 class="mb-5">Our <u class="text-info">Location</u></h2>
                        </div>

                        <div class="col-lg-6 col-12">
                            <iframe class="google-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1511.091461689997!2d-73.9866630916883!3d40.758001294831736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25855a96da09d%3A0x860bf5a5e1a00a68!2sTimes%20Square%2C%20New%20York%2C%20NY%2010036%2C%20USA!5e0!3m2!1sen!2ssg!4v1643035529098!5m2!1sen!2ssg" width="100%" height="371.59" allowfullscreen="" loading="lazy"></iframe>
                        </div>

                        <div class="col-lg-6 col-12 mt-5 mt-lg-0">
                            <div class="venue-thumb bg-white shadow-lg">
                                
                                <div class="venue-info-title">
                                    <h2 class="text-white mb-0">Contact Info</h2>
                                </div>

                                <div class="venue-info-body">
                                    <h4 class="d-flex">
                                        <i class="bi-geo-alt me-2"></i> 
                                        <span>102 South. 7th Street, New York, NY 10036, USA</span>
                                    </h4>

                                    <h5 class="mt-4 mb-3">
                                        <a href="mailto:hello@yourgmail.com">
                                            <i class="bi-envelope me-2"></i>
                                            hi@company.com
                                        </a>
                                    </h5>

                                    <h5 class="mb-0">
                                        <a href="tel: 305-240-9671">
                                            <i class="bi-telephone me-2"></i>
                                            010-020-0340
                                        </a>
                                    </h5>

                                    <div class="mt-4">
                                        <h5>Follow Us</h5>
                                        <ul class="social-icon">
                                            <li><a href="#" class="social-icon-link bi-facebook"></a></li>
                                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>
                                            <li><a href="#" class="social-icon-link bi-whatsapp"></a></li>
                                            <li><a href="#" class="social-icon-link bi-youtube"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </main>

      
    </body>
</html>

</asp:Content>

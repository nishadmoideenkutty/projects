<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name="layout" content="main2">
  </head>
  <body>
    <section class="login">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="n-customer">
                            <h5>New Customer</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem est eum earum eius dolores, alias modi aut officia quo perferendis id aspernatur neque provident quas, quidem libero veritatis voluptatum illum!</p>
                            <a href="${createLink(controller:'genEcom', action:'customer')}">Create an Account</a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="r-customer">
                            <h5>Registered Customer</h5>
                            <p>If you have an account with us, please log in.</p>
                            <g:form controller="Login" action="doLoginCust">
                                <div class="emal">
                                    <label>Mobile No </label>
                                    <input type="text" name="usrCd" required="true">
                                </div>
                                <div class="pass">
                                    <label>Password</label>
                                    <input type="password"  class="form-control" name="password" required="true" >
                                </div>
                                <div class="d-flex justify-content-between nam-btm">
                                    <div>
                                        <input type="checkbox" name="rememberme" id="rmme">
                                        <label for="rmme">Remember Me</label>
                                    </div>
                                    <div>
                                        <a href="#">Lost your password?</a>
                                    </div>
                                </div>
                                <button type="submit" name="button">Log In</button>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
  </body>
</html>

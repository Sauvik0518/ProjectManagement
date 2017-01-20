<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
    <head>
		
		
			<style>
			
			.modal{
			border:1px solid Silver;
			margin-left:15%;
			margin-right:15%;
			margin-top:5%;
			padding-right:0%;
			padding-left:0%;
			}
			
			input[type=email], input[type=password] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			}
			
			.button {
			background-color: #D10D06;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 100%;
			}
			
			.imgcontainer {
			text-align: center;
			margin: 24px 0 12px 0;
			position: relative;
			}
			
			.container{
			padding-left:0%;
			}
			
			.linkcontainer{
			width:50%;
			padding-left:30%;
			}
			
			img.avatar {
			width: 10%;
			border-radius: 35%;
			}
			
			span.psw {
			width:50%;
			float: center;
			padding-top: 0.2%;
			padding-left:30%;
			
			}
			
		</style>
		
    </head>


    <body>
        <div id="fullform" class="modal">
  
			<form action="j_security_check" method="POST">
			
				<div class="imgcontainer">
					<img src="E:\JavaPrograms\NetBeans_Projects\ProjectManagement\ProjectManagement-war\web\projectmanager.png" alt="Project Management Tool" class="avatar">
				</div>

				<div class="container">
					<label><b>Email</b></label><br/>
					<input type="email" class="input"  name="j_username" size="35"><br/>

					<label><b>Password</b></label><br/>
					<input type="password" class="input"  name="j_password" size="35"><br/>
        
					<input type="submit" value="Login" class="button">
				</div>

				
			
			</form>
		
		</div>
                            
     </body>
							
 </html>
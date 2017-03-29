<html>
    <head><title>{{title}}</title></head>
    <body>
         <h1><center>{{title}}</center></h1>
         <div class="caixa">
         	<div class="helper">
         		% for msg in messages:
		         	<div class="caixa-interna">
			            <span class="nome">{{msg['cl']}}:</span>
			            <br>
			            <BLOCKQUOTE>
			            <span class="mensagem">{{msg['msg']}}</span>
		            </div>

	          	% end
         	</div>
         </div>
    </body>

<style type="text/css">
.caixa{
	position: relative;
	width: 400px;
	height: 600px;
	margin-left: auto;
	margin-right: auto;
	background-color: #ccc;
	padding-top: 10px;
	overflow-y: auto;
}
.helper{
	position: absolute;
}
.caixa-interna{
	margin-left: auto;
	margin-right: auto;
	background-color: #fff;
	margin: 25px;
	padding: 5px;
	-moz-border-radius:7px;
	-webkit-border-radius:7px;
	 border-radius:7px;
}
.nome{
	color: green;
	font-size: 24px;
	font-weight: 500;
}	
.mensagem{
	color: blue;
}


</style>
</html>

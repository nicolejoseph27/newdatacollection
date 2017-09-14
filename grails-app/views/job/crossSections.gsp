<html>
    <head>
    
    <g:javascript plugin="jquery" library="jquery" />
   <g:javascript library="application" />
   <jqui:resources />
   <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
   
        <meta name="layout" content="main"/>
        
        <h1 style="font-size:52px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Compunetics</h1>
        <h2 style="font-style:italic;font-size:20px;text-align:center">excellence, measured in microns.</h2>
        <h3 style="font-size:18px;text-align:left">Microsection Report</h3>
    </head>
    <body>
    
   
	<div>Customer: ${fieldValue(bean: jobInstance, field: "companyname")}
	Part Number: ${fieldValue(bean: jobInstance, field: "jobname")}
	</div>
   
  	<div>Work Order: ${fieldValue(bean: jobInstance, field: "workorder")}
	</div> 
	
   
   <div class="job" style = "float:right"> 
                	 <g:link controller="panel" action="create" style="color:#228B22;text-transform:capitalize">create a panel</g:link>
               </div>
   
    </body>
</html>

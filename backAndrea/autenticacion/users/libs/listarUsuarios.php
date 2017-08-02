<?php require_once('../../functions.php');?> 
<script type="text/javascript" language="javascript" src="js/jslistadousuarios.js"></script>            
<table cellpadding="0" cellspacing="0" border="0" class="display" id="tabla_lista_usuarios">                
  <thead>                    
    <tr>
      <th>#
      </th>                          
      <th>Nombre</th>                      
      <th>Email</th>                 
      <th>Pais</th>                      
    </tr>                
  </thead>                
  <tfoot>                    
    <tr>                        
      <th></th>                        
      <th></th>                        
      <th></th>
      <th></th>                                               
    </tr>                
  </tfoot>                  
  <tbody>                 
<?php
		users();
?>          
    <tbody>            
</table>
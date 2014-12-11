<%@ page import="magnetboard.BottomsUp" %>

<!DOCTYPE html>
<html>
<head>

<style>
#quote {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    width: 25%;
    border-collapse: collapse;
}

#quote td, #quote th {
    font-size: 1em;
    border: 1px solid #98bf21;
    padding: 3px 7px 2px 7px;
    text-align: center;
}

#quote th {
    font-size: 1.1em;
    text-align: center;  
    padding-top: 5px;
    padding-bottom: 4px;
    background-color: #A7C942;
    color: #ffffff;
}

#quote tr.alt td {
    color: #000000;
    background-color: #EAF2D3;
    
}
</style>
</head>
<body>
<h1 style="text-align:center">${bottomsUpInstance.companyName} - ${bottomsUpInstance.partNumber}</h1>
<table id="quote">
  <tr>
    <th>Process</th>
    <th>Labor Minutes</th>  
  </tr>
  
  <tr>
    <td>NRE Cost</td>
    <td>${NRE}</td>    
  </tr>
  
  <tr>
    <td>Shear</td>
    <td>${shear}</td> 
  </tr>
  
  <tr class="alt">
    <td>Chem Clean</td>
    <td>${chemClean}</td> 
  </tr>
  
  <tr>
    <td>Inner Layer Lamination</td>
    <td>${innerLayerLamination}</td>  
  </tr>

  <tr>
    <td>IL PPG Coat</td>
    <td>${innerLayerPpgCoat}</td>   
  </tr> 
    
  <tr class="alt">
    <td>Inner Layer Films</td>
    <td>${innerLayerFilms}</td> 
  </tr>
  
  <tr>
    <td>Inner layer Image</td>
    <td>${innerLayerImage}</td>   
  </tr>
    
  <tr>
    <td>Inner Layer Develop</td>
    <td>${innerLayerDevelop}</td>   
  </tr>
    
  <tr class="alt">
    <td>IL PPG Develop</td>
    <td>${innerLayerPpgDevelop}</td>   
  </tr> 
  
  <tr>
    <td>Inner Layer AOI Before Etch</td>
    <td>${innerLayerAoiBeforeEtch}</td>   
  </tr>
  
  <tr>
    <td>Inner Layer Repair</td>
    <td>${innerLayerRepair}</td>   
  </tr>
  
  <tr>
    <td>Inner Layer Etch & Strip</td>
    <td>${innerLayerEtchAndStrip}</td>   
  </tr>

  <tr>
    <td>IL PPG Strip</td>
    <td>${innerLayerPpgStrip}</td>   
  </tr> 
  
  <tr>
    <td>Post Etch Punch</td>
    <td>${postEtchPunch}</td>    
  </tr>
  
  <tr class="alt">
    <td>Laser Slots</td>
    <td>${laserSlots}</td>   
  </tr> 

  <tr class="alt">
    <td>IL AOI After Etch</td>
    <td>${innerLayerAoiAfterEtch}</td>    
  </tr> 
  
  <tr>
    <td>IL Rework</td>
    <td>${innerLayerRework}</td>    
  </tr>  
  
  <tr class="alt">
    <td>DI Rinse</td>
    <td>${diRinse}</td>    
  </tr> 
  
  <tr>
    <td>Plasma Press Prep</td>
    <td>${plasmaPressPrep}</td>   
  </tr>   
  
  <tr class="alt">
    <td>Bond Film</td>
    <td>${bondFilm}</td>    
  </tr> 
  
  <tr>
    <td>Laser Coverlay</td>
    <td>${laserCoverlay}</td>    
  </tr> 
  
  <tr>
    <td>Tack Coverlay</td>
    <td>${tackCoverlay}</td>    
  </tr> 
  
  <tr class="alt">
    <td>Layup</td>
    <td>${layup}</td>    
  </tr> 
  
  <tr>
    <td>Press</td>
    <td>${press}</td>   
  </tr> 
  
  <tr class="alt">
    <td>Breakdown</td>
    <td>${breakdown}</td>   
  </tr>
  
  <tr>
    <td>Flash Route</td>
    <td>${flashRoute}</td>   
  </tr> 
  
  <tr class="alt">
    <td>Registration</td>
    <td>${registration}</td>   
  </tr>
  
  <tr>
    <td>Drill 2000</td>
    <td>${drill2000}</td>   
  </tr> 
  
  <tr class="alt">
    <td>Drill Uniline</td>
    <td>${drillUniline}</td>   
  </tr>
  
  <tr>
    <td>Drill C129</td>
    <td>${drillC129}</td>   
  </tr> 
  
  <tr class="alt">
    <td>Drill Laser</td>
    <td>${drillLaser}</td>   
  </tr>
  
  <tr>
    <td>Acid Clean</td>
    <td>${acidClean}</td>   
  </tr> 
  
  <tr class="alt">
    <td>Deburr/Scrub</td>
    <td>${deburrScrub}</td>   
  </tr>
  
  <tr>
    <td>Plasma Desmear</td>
    <td>${plasmaDesmear}</td>   
  </tr> 
  
  <tr class="alt">
    <td>Chemical Desmear</td>
    <td>${chemicalDesmear}</td>   
  </tr>
  
  <tr>
    <td>Glass Etch Only</td>
    <td>${glassEtchOnly}</td>   
  </tr> 
  
  <tr class="alt">
    <td>Deburr/Scrub</td>
    <td>${deburrScrub}</td>   
  </tr>
  
  <tr>
    <td>pth</td>
    <td>${pth}</td>   
  </tr> 
  
  <tr class="alt">
    <td>dcFlashPlate</td>
    <td>${dcFlashPlate}</td>   
  </tr>
  
  <tr>
    <td>pprFlashPlate</td>
    <td>${pprFlashPlate}</td>   
  </tr> 
  
  <tr class="alt">
    <td>dcWrapPlate</td>
    <td>${dcWrapPlate}</td>   
  </tr>  
  
  <tr>
    <td>pprWrapPlate</td>
    <td>${pprWrapPlate}</td>   
  </tr> 
  
  <tr class="alt">
    <td>inProcessCrossSection</td>
    <td>${inProcessCrossSection}</td>   
  </tr>
  
  <tr>
    <td>outerLayerChemClean</td>
    <td>${outerLayerChemClean}</td>   
  </tr> 
  
  <tr class="alt">
    <td>outerLayerLamination</td>
    <td>${outerLayerLamination}</td>   
  </tr>  
 
</table>

</body>
</html>

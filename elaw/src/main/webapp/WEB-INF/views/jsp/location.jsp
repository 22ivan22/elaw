<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Adresa</h3>
  </div>
  <div class="panel-body">
	   
	
		<div class="row">
			<div class="form-group col-md-3">
			    <label for="countryCB" class="control-label">Država</label>
		    	<sf:select id="countryCB" path="countryId">
					<sf:option value="" />
					<sf:options items="${countryList}" itemValue="id" itemLabel="nameCro" />
				</sf:select>
		  	</div>
		</div>
	  
	  	<div class="row">
			<div class="form-group col-md-3">
		    	<label for="districtCB" class="control-label">Županija</label>
		    	<sf:select id="districtCB" path="districtId"></sf:select>
		  	</div>
		 </div>
		 
		 <div class="row">
			<div class="form-group col-md-3">
		    	<label for="regionCB" class="control-label">Općina</label>
		    	<sf:select id="regionCB" path="regionId"></sf:select>
		  	</div>
		 </div>
		 
		 <div class="row">
			<div class="form-group col-md-3">
		    	<label for="settlementCB" class="control-label">Naselje</label>
		    	<sf:select id="settlementCB" path="settlementId"></sf:select>
		  	</div>
		 </div>
	  
  </div>
</div>


<script type="text/javascript">
	
$(document).ready(function() {

	$("#countryCB").select2({
		theme : "classic",
		allowClear : true,
		placeholder : "Odaberite državu...",
		width : '100%',
		language: "hr"
	}).on("select2:select", function(e) {
		$("#districtCB").prop("disabled", false);
		$("#districtCB").select2("val", "");
		$("#regionCB").prop("disabled", true);
		$("#regionCB").select2("val", "");
		$("#settlementCB").prop("disabled", true);
		$("#settlementCB").select2("val", "");
	}).on("select2:unselect", function(e) {
		$("#districtCB").prop("disabled", true);
		$("#districtCB").select2("val", "");
		$("#regionCB").prop("disabled", true);
		$("#regionCB").select2("val", "");
		$("#settlementCB").prop("disabled", true);
		$("#settlementCB").select2("val", "");
	});
	
	$("#districtCB").select2({
		theme : "classic",
		allowClear : true,
		placeholder : "Odaberite županiju...",
		width : '100%',
		language: "hr",
		minimumResultsForSearch:100,
		ajax : {
				url : "${getCountryDistrictsURL}",
				dataType : "json",
				quietMillis : 100,
				data : function(params) {
					return {countryId : $("#countryCB").val()};
				} ,
				processResults: function (data) {
				    var processedData = $.map(data, function (obj) {
				    	obj.id = obj.id; 
				    	obj.text = obj.text;
					    return obj;
					});
					return {results: processedData};
				}
			}
		}).on("select2:select", function(e) {
			$("#regionCB").prop("disabled", false);
			$("#regionCB").select2("val", "");
			$("#settlementCB").prop("disabled", true);
			$("#settlementCB").select2("val", "");
		}).on("select2:unselect", function(e) {
			$("#regionCB").prop("disabled", true);
			$("#regionCB").select2("val", "");
			$("#settlementCB").prop("disabled", true);
			$("#settlementCB").select2("val", "");
		});
	
		$("#regionCB").select2({
			theme : "classic",
			allowClear : true,
			placeholder : "Odaberite općinu...",
			width : '100%',
			language: "hr",
			minimumResultsForSearch:100,
			ajax : {
					url : "${getDistrictRegionsURL}",
					dataType : "json",
					quietMillis : 100,
					data : function(params) {
						return {districtId : $("#districtCB").val()};
					} ,
					processResults: function (data) {
					    var processedData = $.map(data, function (obj) {
					    	obj.id = obj.id; 
					    	obj.text = obj.text;
						    return obj;
						});
						return {results: processedData};
					}
				}
		}).on("select2:select", function(e) {
			$("#settlementCB").prop("disabled", false);
			$("#settlementCB").select2("val", "");
		}).on("select2:unselect", function(e) {
			$("#settlementCB").prop("disabled", true);
			$("#settlementCB").select2("val", "");
		});
		
		$("#settlementCB").select2({
			theme : "classic",
			allowClear : true,
			placeholder : "Odaberite naselje...",
			width : '100%',
			language: "hr",
			minimumResultsForSearch:100,
			ajax : {
					url : "${getRegionSettlementsURL}",
					dataType : "json",
					quietMillis : 100,
					data : function(params) {
						return {regionId : $("#regionCB").val()};
					} ,
					processResults: function (data) {
					    var processedData = $.map(data, function (obj) {
					    	obj.id = obj.id; 
					    	obj.text = obj.text;
						    return obj;
						});
						return {results: processedData};
					}
				}
		});
	
	 	
		initSelect();

		function initSelect() {
			var countryId = $("#countryCB").val();
			if (countryId == ""){
				$("#districtCB").prop("disabled", true);
				$("#regionCB").prop("disabled", true);
				$("#settlementCB").prop("disabled", true);
			}
		}  
		

});

</script>
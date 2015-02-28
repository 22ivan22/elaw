<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<c:url value="/clientInsert" var="locationInsertURL" />
<c:url value="/location/getCountryDistricts" var="getCountryDistrictsURL" />
<c:url value="/location/getDistrictRegions" var="getDistrictRegionsURL" />
<c:url value="/location/getRegionSettlements" var="getRegionSettlementsURL" />

 <sf:form action="${clientInsertURL}" commandName="clientInsertForm">
 
	<tiles:insertDefinition name="clientDetails" />
	<tiles:insertDefinition name="locationView" />
	<tiles:insertDefinition name="identityCard" />
	<tiles:insertDefinition name="passport" />
	
 </sf:form>
<%@ page  language="java" contentType="text/html; charset=UTF-8" %>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<div id="sidebar" role="navigation">
	<div class="list-group">
	<a class="list-group-item<c:if test="${menuItem eq 1}" > active</c:if>" href="<c:url value="/" />"><i class="fa fa-home fa-fw"></i>&nbsp; Početna</a>
	<a class="list-group-item<c:if test="${menuItem eq 2}" > active</c:if>" href="<c:url value="/link1" />"><i class="fa fa-calendar fa-fw"></i>&nbsp; Link 1</a>
	<a class="list-group-item<c:if test="${menuItem eq 3}" > active</c:if>" href="<c:url value="/location" />"><i class="fa fa-building-o fa-fw"></i>&nbsp; Location</a>
	<a class="list-group-item<c:if test="${menuItem eq 4}" > active</c:if>" href="<c:url value="/link3" />"><i class="fa fa-coffee fa-fw"></i>&nbsp; Link 3</a>
	
	</div>
</div>





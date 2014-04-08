<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>

<template:addResources type="css" resources="customer-quote.css"/>

<h4>${currentNode.properties['jcr:title'].string}</h4>

<div class="floatleft">
    <img src="${currentNode.properties.image.node.url}?t=thumbnail" align="left">
</div>

${functions:abbreviate(functions:removeHtmlTags(currentNode.properties.body.string),180,200, "...")}

<p>
    <a href="<c:url value='${currentNode.url}'/>"><fmt:message key="label.readmore"/></a>
</p>

<div class="clear"></div>

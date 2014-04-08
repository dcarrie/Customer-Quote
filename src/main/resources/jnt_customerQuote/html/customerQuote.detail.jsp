<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>


<template:addResources type="css" resources="customer-quote.css"/>


<h2>${currentNode.properties['jcr:title'].string}</h2>
<div class="cust-quote-top floatleft" style="width:150px">
    <div class="cust-quote-bottom">
        <p>${currentNode.properties.quote.string}</p>
    </div>
</div>

<div class="floatright">
    <img src="${currentNode.properties.image.node.url}" align="right">
</div>
<div>${currentNode.properties.body.string}</div>
<div class="clear"></div>


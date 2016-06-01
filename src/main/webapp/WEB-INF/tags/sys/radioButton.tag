<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fns" uri="/WEB-INF/tlds/fns.tld" %>
<%@ attribute name="typeCode" type="java.lang.String" required="true" description="字典code"%>
<%@ attribute name="defaultValue" type="java.lang.String" description="默认选中"%>
<%@ attribute name="cls" type="java.lang.String" description="默认选中"%>
<%@ attribute name="name" type="java.lang.String" description="默认选中"%>
<%@ attribute name="disabled" type="java.lang.String" description="默认是否禁用"%>
<c:if test="${not empty typeCode}">
	<c:forEach items="${fns:getDictList(typeCode)}" var='dict'>
		<input class="${cls}" type="radio" name="${name}" <c:if test="${not empty disabled}">disabled="disabled"</c:if> value="${dict.value}" ${defaultValue==dict.value?'checked="checked"':''} />${dict.name}
	</c:forEach>
</c:if>

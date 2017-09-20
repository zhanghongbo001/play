<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:choose>
    <c:when test="${empty MENU}">
        <p>菜单消失了，请联系管理员</p>
    </c:when>
    <c:otherwise>
        <c:forEach items="${MENU}" var="m">
            <c:choose>
                <c:when test="${fn:length(m.children) eq 0}">
                    <li>
                        <a href="${ctx}${m.url}" class="waves-effect"><i class="${m.icon}"></i><span>${m.name}</span></a>
                    </li>
                </c:when>
                <c:otherwise>
                        <li class="has_sub">
                            <a href="javascript:;" class="waves-effect"><i class="${m.icon}"></i><span>${m.name}</span><span class="pull-right"><i class="md md-add"></i></span></a>
                            <ul class="list-unstyled">
                                <c:forEach items="${m.children}" var="c">
                                    <li>
                                        <c:choose>
                                            <c:when test="${c.selected}">
                                                <a href="${ctx}${c.url}" class="selected"><i class="${c.icon}"></i>${c.name}</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="${ctx}${c.url}"><i class="${c.icon}"></i>${c.name}</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </c:otherwise>
</c:choose>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="date" class="java.util.Date" />
 
<script src="<c:url value="/content/js/moment.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-base64-upload.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-cookies.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-datatables.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-growl.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-sanitize.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/datatables.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/ui-bootstrap-tpls-2.5.0.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/bootstrap-datetimepicker.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-eonasdan-datetimepicker.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-datatables.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-moment.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-filter.js" />" type="text/javascript"></script>
<script src="<c:url value="/app/app.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/app/compt.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/app/datehandler.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/app/angularDateTime.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

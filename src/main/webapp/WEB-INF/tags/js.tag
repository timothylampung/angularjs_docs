
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="<c:url value="/content/js/jquery-2.2.4.min.js" />"></script>
<script src="<c:url value="/content/js/moment.min.js" />"></script>
<script src="<c:url value="/content/js/modernizr.custom.js" />"></script>        
<script src="<c:url value="/content/js/underscore-min.js" />" type="text/javascript"></script>    
<script src="<c:url value="/content/js/Chart.js" />"></script>        
<script src="<c:url value="/content/js/wow.min.js" />"></script>
<script src="<c:url value="/content/js/metisMenu.min.js" />"></script>
<script src="<c:url value="/content/js/custom.js" />"></script>
<script src="<c:url value="/content/js/classie.js" />"></script>    
<script src="<c:url value="/content/js/jquery.nicescroll.js" />"></script>
<script src="<c:url value="/content/js/scripts.js" />"></script>
<script src="<c:url value="/content/js/bootstrap.js" />"> </script>
<script src="<c:url value="/content/js/ui-bootstrap-tpls-2.5.0.min.js" />"> </script>
<script src="<c:url value="/content/js/jquery.vmap.js" />"></script>
<script src="<c:url value="/content/js/jquery.vmap.sampledata.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/jquery.vmap.world.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/jquery.dataTables.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/wizard.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/jquery-ui.js" />" type="text/javascript"></script>
            
<script type="application/x-javascript"> 
    addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
            
<script>
    new WOW().init();
</script>
            
<script>
    var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
            showLeftPush = document.getElementById( 'showLeftPush' ),
            body = document.body;
            
    showLeftPush.onclick = function() {
        classie.toggle( this, 'active' );
        classie.toggle( body, 'cbp-spmenu-push-toright' );
        classie.toggle( menuLeft, 'cbp-spmenu-open' );
        disableOther( 'showLeftPush' );
    };            
            
    function disableOther( button ) {
        if( button !== 'showLeftPush' ) {
            classie.toggle( showLeftPush, 'disabled' );
        }
    }
</script>
<!doctype html>
<html>
	<head>
		<title>Lupa's scraper service</title>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<style type="text/css">
		    body{
		        font-family: "MrsEavesXLSerRRegular", "Helvetica Neue", Helvetica, Arial, sans-serif;
                font-size: 1.05em;
                line-height: 1.5em;
                color: #111111;
		    }
		</style>

	</head>
	<body>
		<form method="get" action="scraper">
		    <div id="form" >
		        <p>Give us a URL, we show you its guts:</p>
		        <input type="text" name="url" size="75">
                <input type="submit" value="Scrap">
            </div>
		</form>
	</body>

	<script type="text/javascript">
                jQuery.fn.center = function () {
                    this.css("position","absolute");
                    this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
                                                                $(window).scrollTop()) + "px");
                    this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
                                                                $(window).scrollLeft()) + "px");
                    return this;
                }

                $(document).ready(function(){
                    $('#form').center();
                    $(window).bind('resize', function() {
                        $('#form').center({transition:300});
                    });
                });
    </script>

</html>

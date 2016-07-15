  $(document).ready(function(){



        	$('.unhide-topic-questions').click(function(e)
{
    if (e.target == this)
    {
        $(this).children().toggle();

        $(this).next().slideToggle();
    }
});
			
        });
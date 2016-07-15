<?php



do_action('dgb_before_query');

$maths = $science = $philosophy = $art = $history = $learning = array();
$imgpath = get_template_directory_uri() . '/img/';


    $loop = new WP_Query( array( 'post_type' => 'questions', 'posts_per_page' => 100) );
    if ( $loop->have_posts() ) :
        while ( $loop->have_posts() ) : $loop->the_post(); ?>
 
                   
<?php

			$question_category_array = wp_get_post_terms( get_the_ID(), 'question_type' );
			foreach ($question_category_array as $key => $value) {
				$question_category = $value->name;
				
				if ($question_category == 'Maths') {

					$question_title =  get_the_title();
					array_push($maths, $question_title);

					
				} elseif ($question_category == 'Science') {
					$question_title =  get_the_title();
					array_push($science, $question_title);

				} elseif ($question_category == 'Art') {
					$question_title =  get_the_title();
					array_push($art, $question_title);

				} elseif ($question_category == 'Philosophy') {
					$question_title =  get_the_title();
					array_push($philosophy, $question_title);

				} elseif ($question_category == 'History') {
					$question_title =  get_the_title();
					array_push($history, $question_title);
				} elseif ($question_category == 'Learning') {
					$question_title =  get_the_title();
					array_push($learning, $question_title);
				}
			}

?>



        <?php endwhile; ?>
       


        <div class="topic-wrap">
	        <img class='subject-icon' src="<?php echo $imgpath; ?>maths.png"><h1 class="unhide-topic-questions">Maths Questions <span class=" carret carret-down">  &#9660;</span><span class="carret-up hidden">  &#9650;</span></h1>
	        <div class="topic-child hidden "> 
	        	<div class="maths-wrap clearfix">
	      <?php  foreach ($maths as $key => $value) {
	        	$question = esc_html($value);
	        	$output = '<div class="create-group-wrap">';
	        	$output .= '<h3>' . $value  . '</h3>';
	        	$output .=  '
	        		<form class="create-group-button" action="' . htmlspecialchars($_SERVER["PHP_SELF"]) . '" method="post">
	        			<input type="hidden" value="' . $question . '" name="sole-question">
	        			<input type="hidden" value="Maths" name="sole-question-category">
	        			<input class="main-button" type="submit" name="create-sole-button" value="Create New Group">
	        		</form>';
	        	
	        	$output .= '</div>';
	        	echo $output;
	        }
	      ?>
	  			</div>
	  		</div> 
      	</div>

<!-- learning -->

  <div class="topic-wrap">
	        <img class='subject-icon' src="<?php echo $imgpath; ?>education.png"><h1 class="unhide-topic-questions">Education Questions <span class=" carret carret-down">  &#9660;</span><span class="carret-up hidden">  &#9650;</span></h1>
	        <div class="topic-child  hidden"> 
	        	<div class="learning-wrap clearfix">
	      <?php  foreach ($learning as $key => $value) {
	        	$question = esc_html($value);
	        	$output = '<div class="create-group-wrap">';
	        	$output .= '<h3>' . $value  . '</h3>';
	        	$output .=  '
	        		<form class="create-group-button" action="' . htmlspecialchars($_SERVER["PHP_SELF"]) . '" method="post">
	        			<input type="hidden" value="' . $question . '" name="sole-question">
	        			<input type="hidden" value="Education" name="sole-question-category">
	        			<input class="main-button" type="submit" name="create-sole-button" value="Create New Group">
	        		</form>';
	        	
	        	$output .= '</div>';
	        	echo $output;
	        }
	      ?>	</div>
	  		</div> 
      	</div>  




     <div class="topic-wrap">
	        <img class='subject-icon' src="<?php echo $imgpath; ?>science.png"><h1 class="unhide-topic-questions">Science Questions <span class=" carret carret-down">  &#9660;</span><span class="carret-up hidden">  &#9650;</span></h1>
	        <div class="topic-child  hidden"> 
	        	<div class="science-wrap clearfix">
	      <?php  foreach ($science as $key => $value) {
	        	$question = esc_html($value);
	        	$output = '<div class="create-group-wrap">';
	        	$output .= '<h3>' . $value  . '</h3>';
	        	$output .=  '
	        		<form class="create-group-button" action="' . htmlspecialchars($_SERVER["PHP_SELF"]) . '" method="post">
	        			<input type="hidden" value="' . $question . '" name="sole-question">
	        			<input type="hidden" value="Science" name="sole-question-category">
	        			<input class="main-button" type="submit" name="create-sole-button" value="Create New Group">
	        		</form>';
	        	
	        	$output .= '</div>';
	        	echo $output;
	        }
	      ?>	</div>
	  		</div> 
      	</div>  



    <div class="topic-wrap">
	        <img class='subject-icon' src="<?php echo $imgpath; ?>art.png"><h1 class="unhide-topic-questions">Art Questions <span class=" carret carret-down">  &#9660;</span><span class="carret-up hidden">  &#9650;</span></h1>
	        <div class="topic-child  hidden"> 
	        	<div class="art-wrap clearfix">
	      <?php  foreach ($art as $key => $value) {
	        	$question = esc_html($value);
	        	$output = '<div class="create-group-wrap">';
	        	$output .= '<h3>' . $value  . '</h3>';
	        	$output .=  '
	        		<form class="create-group-button" action="' . htmlspecialchars($_SERVER["PHP_SELF"]) . '" method="post">
	        			<input type="hidden" value="' . $question . '" name="sole-question">
	        			<input type="hidden" value="Art" name="sole-question-category">
	        			<input class="main-button" type="submit" name="create-sole-button" value="Create New Group">
	        		</form>';
	        	
	        	$output .= '</div>';
	        	echo $output;
	        }
	      ?>	</div>
	  		</div> 
      	</div>  

    

    <div class="topic-wrap">
	        <img class='subject-icon' src="<?php echo $imgpath; ?>philosophy.png"><h1 class="unhide-topic-questions">Philosophy Questions <span class=" carret carret-down">  &#9660;</span><span class="carret-up hidden">  &#9650;</span></h1>
	        <div class="topic-child  hidden"> 
	        	<div class="philosophy-wrap clearfix">
	      <?php  foreach ($philosophy as $key => $value) {
	        	$question = esc_html($value);
	        	$output = '<div class="create-group-wrap">';
	        	$output .= '<h3>' . $value  . '</h3>';
	        	$output .=  '
	        		<form class="create-group-button" action="' . htmlspecialchars($_SERVER["PHP_SELF"]) . '" method="post">
	        			<input type="hidden" value="' . $question . '" name="sole-question">
	        			<input type="hidden" value="Philosophy" name="sole-question-category">
	        			<input class="main-button" type="submit" name="create-sole-button" value="Create New Group">
	        		</form>';
	        	
	        	$output .= '</div>';
	        	echo $output;
	        }
	      ?>	</div>
	  		</div> 
      	</div>   

        <div class="topic-wrap">
	        <img class='subject-icon' src="<?php echo $imgpath; ?>history.png"><h1 class="unhide-topic-questions">History Questions <span class=" carret carret-down">  &#9660;</span><span class="carret-up hidden">  &#9650;</span></h1>
	        <div class="topic-child  hidden"> 
	        	<div class="history-wrap clearfix">
	      <?php  foreach ($history as $key => $value) {
	        	$question = esc_html($value);
	        	$output = '<div class="create-group-wrap">';
	        	$output .= '<h3>' . $value  . '</h3>';
	        	$output .=  '
	        		<form class="create-group-button" action="' . htmlspecialchars($_SERVER["PHP_SELF"]) . '" method="post">
	        			<input type="hidden" value="' . $question . '" name="sole-question">
	        			<input type="hidden" value="History" name="sole-question-category">
	        			<input class="main-button" type="submit" name="create-sole-button" value="Create New Group">
	        		</form>';
	        	
	        	$output .= '</div>';
	        	echo $output;
	        }
	      ?>	</div>
	  		</div> 
      	</div>

      	<?php
    endif;
    wp_reset_postdata();
 


?>
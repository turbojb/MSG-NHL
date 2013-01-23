var debug = false;
/*******************************************  Url variables ************************************************/

var app_bitly = 'https://www.facebook.com/MSGNetworks/app_402091519862919?ref=ts';
var app_deploy_url = 'https://www.facebook.com/MSGNetworks/app_402091519862919?ref=ts';

/***********************************************************************************************************/

 $(document).ready(function() {

 	if (show_modal == true) {
 		showModal();
 	}

	$('#tweeters').jTweetsAnywhere({
	    //alert('hello tweeters');
	    username: 'MSGNetworks',
	    count: 4,
	    //searchParams: ['q=%23bagel'], // from:myName
	    showTweetFeed: {
	        showProfileImages: true,
	        showUserScreenNames: true,
	        paging: {
	            mode: 'endless-scroll'
	        }
	    },
	    onDataRequestHandler: function(stats) {
	        if (stats.dataRequestCount < 11) {
	            return true;
	        }
	        else {
	            alert("To avoid struggling with Twitter's rate limit, we stop loading data after 10 API calls.");
	        }
	    }

	});

	function showModal() {
		
		$.fancybox([{
				'href' :'#tune_in_modal', 
				'title' : '', 
				'width' : 780,
				'height' : 600,
				'padding': 1,
 				'overlayOpacity':.90, 
				'overlayColor': '#000', 
				'titlePosition':'none', 
				'hideOnContentClick':false, 
				'hideOnOverlayClick':true,
				'onStart': function() {
			      
			   	}
			}]);

	}

 });


function close_how_it_works() {
	$.fancybox.close()

}

function show_how_it_works() {

	$.fancybox([{
	  href :'#how_it_works', 
	  title : '', 
	  scrolling: 'no',
	  overlayOpacity:0.75, 
	  overlayColor: '#000',
	  hideOnContentClick:false, 
	  hideOnOverlayClick:true,
	  autoScale: false,
	  width:469,
	  height:275
	}]);

}

function show_schedule() {

	$.fancybox([{
	  href :'#schedule', 
	  title : '', 
	  scrolling: 'no',
	  overlayOpacity:0.75, 
	  overlayColor: '#000',
	  hideOnContentClick:false, 
	  hideOnOverlayClick:true,
	  autoScale: false,
	  width:469,
	  height:275
	}]);

}


function show_thank_you_screen() {
	$('#form-wrapper').fadeOut(200);
	$('#thanks_screen').delay(200).fadeIn(500)	
	//document.getElementById("thanks_screen").style.display = "block";
}



function send_fb_invites(param_user_name) {
	var my_ids = $("#jfmfs-container").data('jfmfs');
	var send_count = 0;
	var selected_ids = my_ids.getSelectedIds();

	// var url = "http://splug.com";
	// var link = "http://splug.com";
	// var photo = url + "/assets/fb_invite_img.png";
	// var name = param_user_name + " wants to invite you to use Splug.";
	// var description = "Splug is your one-stop-shop to safely trade items with people you trust.";

	// for (var i = 0; i < selected_ids.length; i++) {

	// 	FB.api('/' + selected_ids[i] + '/feed', 'post', {

	// 		name : name,
	// 		link : link,
	// 		picture : photo,
	// 		caption : '',
	// 		description : description

	// 	}, function(response) {
	// 		if (!response || response.error) {
	// 			//alert('Error occured');
	// 		} else {
	// 			$('#share_thanks').delay(200).fadeIn(200);
	// 			$('#jfmfs-container').fadeOut(200);

	// 		}
	// 	});
	// }

	my_ids.clearSelected();
}


function fb_share() {
	FB.ui(
		  {
		    method: 'feed',
				name: 'MSG Friday Night Knicks Sweepstakes',
				caption: "I just entered MSG's Friday Night Knicks Sweepstakes. Enter now for your chance to win!",
				message: '',
				description: (""),
				href: app_deploy_url,
				link: app_deploy_url,
		      	picture: 'https://s3.amazonaws.com/msg_fnk/FNK_111x74.jpg',
		    
		    action_links: [
		      { text: 'Click here to enter', href: app_deploy_url }
		    ]
		  },
		  
		  function(response) {
		    if (response && response.post_id) {
		      //alert('Post was published.');
		    } else {
		      //alert('Post was not published.');
		    }
		  }
		  
	);

}

function reset_friend_invite() {
	$('#share_thanks').hide();
	$('#jfmfs-container').show();
}


function generate_error_msg(param_field_name, param_msg) {
	//get the position of the field through jquery
	//
	position = $('#entry_'+param_field_name).position();

	//generate the error message html
	//
	html =  '<div class="entry_<%= escape_javascript(msg[0].to_s) %>_error formError" style="top: '+(position.top-30)+'px; left: '+position.left+'px; margin-top: 0px; opacity: 0.87; ">';
	html += '<div class="formErrorContent">'+param_msg+'</div>';
	html += '<div class="formErrorArrow"><div class="line10"><!-- --></div><div class="line9"><!-- --></div><div class="line8"><!-- --></div><div class="line7"><!-- --></div><div class="line6"><!-- --></div><div class="line5"><!-- --></div><div class="line4"><!-- --></div><div class="line3"><!-- --></div><div class="line2"><!-- --></div><div class="line1"><!-- --></div></div></div>';

	return html;
}


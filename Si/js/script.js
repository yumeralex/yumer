
function loadData() {

    var $body = $('body');
    var $wikiElem = $('#wikipedia-links');
    var $nytHeaderElem = $('#nytimes-header');
    var $nytElem = $('#nytimes-articles');
    var $greeting = $('#greeting');
    var articles;

    // clear out old data before new request
    $wikiElem.text("");
    $nytElem.text("");

    var streetStr = $('#street').val();
    var cityStr = $('#city').val();
    var address = streetStr + ', ' + cityStr;

    $greeting.text('So, you want to live at ' + address + '?');

    // load streetview
    var streetviewUrl = 'http://maps.googleapis.com/maps/api/streetview?size=600x400&location=' + address + '&key=AIzaSyAeNBN2b4bVxoPTjr7lJ4v2rL7VFSCBF1I';
    $body.append('<img  src="' + streetviewUrl + '">');

    
    var pedir = $("#street").val();
    var source = "http://www.nytimeees.com/";
    // load nytimes
    // obviously, replace all the "X"s with your own API key
    nytimesUrl = "https://api.nytimes.com/svc/search/v2/articlesearch.json";
    nytimesUrl += '?' + $.param({
     'api-key': "78de91758dd44a349f7ace3a19ad97a4",
     'q': pedir
    });


     $.getJSON(nytimesUrl,function(data){
        debugger;
        console.log(data);

    });
};
    /*$.getJSON(nytimesUrl, function(data){

        $nytHeaderElem.text('New York Times Articles About ' + cityStr);

        articles = data.response.docs;
        for (var i = 0; i < articles.length; i++) {
            var article = articles[i];
            var images = article.multimedia;


            $nytElem.append('<li class="article">'+
                '<a href="'+article.web_url+'">'+article.headline.main+'</a>'+
                '<p>' + article.snippet + '</p>'+'">'+
            '</li>');

           
        };

    }).error(function(e){
        $nytHeaderElem.text('New York Times Articles Could Not Be Loaded');
    });



       var wikUrl = '/w/api.php?action=query&titles=Main%20Page&prop=revisions&rvprop=content&format=json';


 		$.getJSON(wikUrl,function(data){

      console.log(data);

    });
*/




$("#form-container").submit(function(e) {
    e.preventDefault();
});
$('#form-container').submit(loadData);
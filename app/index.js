var express = require('express');
var app = express();
var path = require('path');

app.set('port', process.env.PORT || 3000);

app.set('views', path.join(__dirname, 'server/views/'));

app.set('view engine', 'jade');

app.title = 'Supercharge Your Front-End Workflow';

app.blogs = [

 {
    title: 'Keffiyeh raw denim sustainable',
    image: '/img/blog-image01.jpg',
    excerpt: 'Cray four loko gentrify, High Life Echo Park disrupt ' +
             'paleo Shoreditch Neutra put a bird on it tilde occupy ' +
             'cardigan wolf keytar. Artisan YOLO trust fund meditation ' +
             'literally PBR.',
    permalink: '/blog/post-one/'
  },
  {
    title: 'Intelligentsia wayfarers iPhone',
    image: '/img/blog-image02.jpg',
    excerpt: 'Gluten-free trust fund sartorial pork belly literally. ' +
             'Yr hoodie swag, cornhole salvia gastropub locavore next ' +
             'level iPhone fingerstache. PBR&B disrupt High Life, ' +
             'locavore drinking vinegar meggings mlkshk 3 wolf moon.',
    permalink: '/blog/post-two/'
  },
  {
    title: 'Art party Brooklyn listicle',
    image: '/img/blog-image03.jpg',
    excerpt: 'Heirloom banh mi narwhal chambray. Neutra Echo Park ' +
             'flannel, health goth pug keytar Blue Bottle chia art ' +
             'party pickled twee Vice. Plaid photo booth next level ' +
             'sriracha hoodie gastropub, gluten-free Carles freegan.',
    permalink: '/blog/post-three/'
  }
];

app.get('/', function( req, res ) {
  res.render('index', { title: app.title, blogs: app.blogs });
});
app.get('/(([a-z]+))/', function( req, res) {

  var page = req.params[0];

    var title = page.charAt(0).toUpperCase() + page.slice(1) + ' | ' + app.title;

	  var templateVars = {

	      title: title // - The title is required for all templates

		   };
		     if (page==='blog') {

			     templateVars.blogs = app.blogs;

				 }
				   res.render(page, templateVars, function (err, html) {

				       if (err) {

					         res.redirect('/404/');

							     } else {

								       res.end(html);

									     }
  });
});
app.get('/blog/:slug/', function( req, res ) {

  var slug = req.params.slug,
      post = {};
	  app.blogs.some(function( blog ) {
    var permalink = '/blog/' + slug + '/';
    if (blog.permalink===permalink) {
      post = blog;
    }
  });

  res.render('single', post, function( err, html) {
    if (err) {
      res.redirect('/404/');
    } else {
      res.end(html);
    }
  });

});
app.use(express.static(path.join(__dirname, 'public')));

app.use(function(err, req, res, next) {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});
app.use(function(req, res, next) {
  res.status(404).send("The page you requested doesn't exist.");
});
var server = app.listen(app.get('port'), function(  ) {
  console.log('App started and listening on port %s', server.address().port);
});

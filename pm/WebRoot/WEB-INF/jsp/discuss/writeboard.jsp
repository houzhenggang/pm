<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>

	<head>

		<!-- MISC/META -->
		<title> ZenPen ~ Minimal Distraction, Maximum Zen </title>
        <meta charset="utf-8">
		<meta name="description" content="Zenpen - A minimal text editor, made to stay out of the way while you get the words down.">
        
		<!-- CSS -->
		<link href="//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
		<link href="js/zenpen/css/style.css" rel="stylesheet">
		<!-- <link href="js/zenpen/css/fonts.css" rel="stylesheet"> -->

		<!-- LIBS -->
		<script src="js/zenpen/js/libs/FileSaver.min.js"></script>
		<script src="js/zenpen/js/libs/Blob.min.js"></script>
		<script src="js/zenpen/js/libs/screenfull.min.js"></script>
		
		<!-- JS -->
		<script src="js/zenpen/js/utils.js"></script>
		<script src="js/zenpen/js/editor.js"></script>
		<script src="js/zenpen/js/ui.js"></script>

    </head>

	<body class="yin">

		<div class="overlay">
			<div class="wordcount modal">
				<h1>Target Word Count</h1>
				<div>
					<input type="number" name="quantity" value="0" min="0"></input>
				</div>
			</div>

			<div class="description modal">
				<h1> About ZenPen </h1>
				<p>  Zenpen is a clean and simple writing zone, made by <a href="http://tholman.com">Tim Holman</a> (<a href="http://twitter.com/twholman">@twholman</a>), to get you into that zone, where you can focus on the writing.
				<br><br>ZenPen is open source on <a href="http://github.com/tholman/zenpen">Github</a>.
				<br><br>If you have any questions, hit me up via <a href="mailto:timothy.w.holman@gmail.com">email</a>.</p>
			</div>
			
			<div class="saveoverlay modal">
				<h1>Select save format</h1>
				<p class='saveselection'>
					<span data-format='markdown'>Markdown</span>
					<span data-format='html'>HTML</span>
					<span data-format='plain'>Plain Text</span>
				</p>
				<button class='savebutton useicons'>&#xe006;</button>
				<div> Or select format and press ctrl+c (cmd+c on mac) to copy the text. </div>
				<textarea class='hiddentextbox'></textarea>
			</div>
		</div>

		<div class="text-options">
			<div class="options">
				<span class="no-overflow">
					<span class="lengthen ui-inputs">
						<button class="url useicons">&#xe005;</button>
						<input class="url-input" type="text" placeholder="Type or Paste URL here"/>
						<button class="bold">b</button>
						<button class="italic">i</button>
						<button class="quote">&rdquo;</button>
					</span>
				</span>
			</div>
		</div>

		<div class="ui">

			<div class="wrapper">

				<div class="top editing">
					<button class="fullscreen useicons" title="Toggle fullscreen">
						&#xe000;
					</button>

					<button class="color-flip useicons" title="Invert colors">
						&#xe002;
					</button>

					<button class="target useicons" title="Set target word count">
						&#xe001;
					</button>
					<button class="save useicons" title="Save Text">
						&#xe003;
					</button>
				</div>

				<div class="bottom">
					<button class="about">
						?
					</button>
				</div>
			</div>
		</div>

		<div class="word-counter">
			<span class="progress"></span>
		</div>

		<section>
			
			<header contenteditable="true" class="header">
				This is ZenPen
			</header>

			<article contenteditable="true" class="content">

				<p>
					A minimalist writing zone, where you can block out all distractions and get to what's important. The writing!
				</p>

				<p>
					To get started, all you need to do is delete this text (seriously, just highlight it and hit delete), and fill the page with your own fantastic words.
				</p>

				<p>
					You can use <b>bold</b>, <i>italics</i>, <b><i>both</i></b> and <a href="http://zenpen.io"> urls </a> just by highlighting the text and selecting them from the tiny options box that appears above it.
				</p>

				<blockquote>
					Quotes are easy to add too!
				</blockquote>

				<p>
					For <i>questions</i> and <b>open source info</b>, Click that little question mark at the bottom left of the screen.
				</p>

				<p>Happy Typing! ~ <b>Tim Holman (@twholman)</b></p>

			</article>

		</section>

		<!-- JS -->
		<script type="text/javascript">
	        // Initiate ZenPen
	        ZenPen.editor.init();
	    	ZenPen.ui.init();
        </script>
	</body>
</html>

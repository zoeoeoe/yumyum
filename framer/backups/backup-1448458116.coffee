# Set device background 
bg = new BackgroundLayer backgroundColor: "#FFCC00"

Framer.Defaults.Animation = {
    curve: "spring(50,10,0)"
}

splashLayers = Framer.Importer.load "imported/splash"｀

splashLayers.title.animate
	properties: 
		y: -500
		scale: 0.5
	delay: 1

loginbtn = splashLayers.loginbtn
loginbtn.y=1330
loginbtn.opacity=0
loginbtn.on Events.Click, ->
	splashLayers.logintext.animate
		properties: 
			scale: 0
			opacity: 0
		time: 0.01
	loginbtn.animate
		properties: 
			scale: 1.02
		curve: "spring"

loginbtn.animate
	properties: 
		y: 620
		opacity: 1
	delay: 2


intro = new PageComponent
	width: Screen.width, height: 900
	opacity: 0
	scrollVertical: false
intro.center()
intro.animate
	properties: 
		opacity: 1
	delay: 1.1

allIndicators = []	
amount = 4
		
intro1 = new Layer 
	backgroundColor: "transparent", 
	width: Screen.width, height: 900
	superLayer: intro.content	
	
chooselayer1 = new Layer
	backgroundColor: "transparent"
	y:100
	width: Screen.width
	superLayer: intro1
chooselayer1.html = "<h2 style='color:#0000FF;text-align:center;'>Choices made wise</h2><br/><p style='color:#0000FF;text-align:center;'>simple food catagories for you</p>"

chooselayer2 = new Layer
	superLayer: intro1
	image: "images/1.png"
	x:170
	y:150
	width:254
	height: 279
chooselayer3 = new Layer
	superLayer: intro1
	image: "images/2.png"
	x:370
	y:170
	width:257
	height: 260	
chooselayer4 = new Layer
	superLayer: intro1
	image: "images/3.png"
	x:235
	y:380
	width:144
	height: 278	
chooselayer5 = new Layer
	superLayer: intro1
	image: "images/4.png"
	x:360
	y:390
	width:232
	height: 234

intro2 = new Layer 
	backgroundColor: "transparent", 
	width: Screen.width, height: 900
	x: 600, superLayer: intro.content
	
cardlayer1 = new Layer
	y:100
	backgroundColor: "transparent"
	width: Screen.width
	superLayer: intro2
cardlayer1.html = "<h2 style='color:#0000FF;text-align:center;'>Easy and fast recipes</h2><br/><p style='color:#0000FF;text-align:center;'>as simple as flipping cards</p>"
cardlayer2 = new Layer
	superLayer: intro2
	width: 500
	height: 500
	y:200
	image: "images/card.svg"
cardlayer2.centerX()

intro3 = new Layer 
	backgroundColor: "transparent", 
	width: Screen.width, height: 900
	x: Screen.width*2, superLayer: intro.content

steplayer1 = new Layer
	y:100
	backgroundColor: "transparent"
	width: Screen.width
	superLayer: intro3
steplayer1.html = "<h2 style='color:#0000FF;text-align:center;'>Step by step</h2><br/><p style='color:#0000FF;text-align:center;'>cook every meal at your own pace</p>"
steplayer2 = new Layer
	superLayer: intro3
	width: 400
	height: 450
	y:250
	image: "images/knife.svg"	
steplayer2.centerX()	

intro4 = new Layer 
	backgroundColor: "transparent", 
	width: Screen.width, height: 900
	x: Screen.width*3, superLayer: intro.content
sharelayer1 = new Layer
	y:100
	backgroundColor: "transparent"
	width: Screen.width
	superLayer: intro4
sharelayer1.html = "<h2 style='color:#0000FF;text-align:center;'>Share the yummy moment</h2><br/><p style='color:#0000FF;text-align:center;'>interact with your friends via food</p>"			
sharelayer2 = new Layer
	superLayer: intro4
	width: 520
	height: 520
	y:200
	image: "images/share.svg"
sharelayer2.centerX()	
	
indicator1 = new Layer 
	backgroundColor: "#0000FF"
	width: 8, height: 8
	x: 0, y: 1334,opacity: 0.5,
	borderRadius: "50%",
indicator2 = new Layer 
	y: 1334
	backgroundColor: "#0000FF"
	width: 8, height: 8
	x: 28, y: 1334,opacity: 0.5,
	borderRadius: "50%"
indicator3 = new Layer 
	y: 1334
	backgroundColor: "#0000FF"
	width: 8, height: 8
	x: 28 *2, y: 1334,opacity: 0.5,
	borderRadius: "50%"	
indicator4 = new Layer 
	y: 1334
	backgroundColor: "#0000FF"
	width: 8, height: 8
	x: 28 *3, y: 1334,opacity: 0.5,
	borderRadius: "50%"	
	
indicator1.animate
	properties: 
		y:1100
	delay:1.5
indicator2.animate
	properties: 
		y:1100
	delay:1.51
indicator3.animate
	properties: 
		y:1100
	delay:1.52
indicator4.animate
	properties: 
		y:1100
	delay:1.53

indicator1.x += (Screen.width / 2) - (10 * amount)
indicator2.x += (Screen.width / 2) - (10 * amount)
indicator3.x += (Screen.width / 2) - (10 * amount)
indicator4.x += (Screen.width / 2) - (10 * amount)



	# States
indicator1.states.add(active: {opacity: 1,scale:1.5})
indicator2.states.add(active: {opacity: 1,scale:1.5})
indicator3.states.add(active: {opacity: 1,scale:1.5})
indicator4.states.add(active: {opacity: 1,scale:1.5})

	# Store indicators in our array
allIndicators.push(indicator1, indicator2, indicator3, indicator4)

# Set indicator for current page
current = intro.horizontalPageIndex(intro.currentPage)
allIndicators[current].states.switch("active")

# Define custom animation curve for page switches
intro.animationOptions = curve: "spring(200,22,0)"

intro.on "change:currentPage", ->
	indicator1.states.switch("default") for indicator1 in allIndicators
	indicator2.states.switch("default") for indicator2 in allIndicators
	indicator3.states.switch("default") for indicator3 in allIndicators
	indicator4.states.switch("default") for indicator3 in allIndicators
	current = intro.horizontalPageIndex(intro.currentPage)
	allIndicators[current].states.switch("active")
	# Animation of pages fading out
	intro.previousPage.animate 
		properties: {scale: 0, opacity: 0}
		curve: "spring", curveOptions: {tension: 100, friction: 50, velocity: 0, tolerance: 1}
			
	intro.previousPage.once Events.AnimationEnd, -> 
		this.scale = 1
		this.opacity =1
# Set device background 
Framer.Device.background.image = "images/db.jpg"

# This imports all the layers for "yumyum" into yumyumLayers


yumyumLayers = Framer.Importer.load "imported/yumyum"

# Set device background 
bg = new BackgroundLayer 
	image: "images/bgd.png"
	brightness: 85

bg.animate
	properties: 
		scale: 1.2
	time: 10
		
Framer.Defaults.Animation = {
    curve: "spring(50,10,0)"
}
			
cheesetomato = new Layer 
	width: 280, height:30
	y:102
	image: "images/cheesetomato.png"
cheesetomato.centerX()	
cheesetomato.visible=false

cookmenu = new Layer 
	width: 350, height:100
	y:252, x:300
	backgroundColor:"transparent"
cookmenu.visible=false



yumyum = Framer.Importer.load "imported/splash"

yumyum.nextcircle.scale=0
yumyum.shake.states.add
	show: opacity: 1, scale: 1.2
	hide: opacity: 0, scale: 1
yumyum.shake.states.add
	show: opacity: 1, scale: 1.2
	hide: opacity: 0, scale: 1

yumyum.explorebtn.states.add
	show: y: 750
	hide: y:1200

yumyum.cards.states.add
	show: x:42, y: 200, scale:1, rotationZ: 0
	hide: y:1310, scale:1, rotationZ: 10
	
yumyum.cards2.states.add
	show: x:42, y: 200, scale:1, rotationZ: 0, opacity: 1
	hide: y:1300, scale:1, rotationZ: -8

yumyum.cards3.states.add
	show: x:42, y: 200, scale:1, rotationZ: 0, opacity: 1
	hide: y:1320, scale:1, rotationZ: 6

yumyum.cards4.states.add
	show: x:42, y: 200, scale:1, rotationZ: 0, opacity: 1
	hide: y:1320, scale:1, rotationZ: -4

yumyum.cheesebtn.states.add
	show: y: 900
	hide: y:1400

yumyum.ch.states.add
	show: opacity: 1
	hide: opacity: 0
yumyum.bh.states.add
	show: opacity: 1
	hide: opacity: 0	
yumyum.fh.states.add
	show: opacity: 1
	hide: opacity: 0	
yumyum.dh.states.add
	show: opacity: 1
	hide: opacity: 0
yumyum.menulist.visible=false
yumyum.albums.visible=false	
yumyum.albumtitle.visible=false
yumyum.tags.opacity = 0
yumyum.backtosteps.visible=false	
yumyum.plate.visible = true
yumyum.finishbtn.scale=0
yumyum.detailcontents.visible = false
yumyum.statusBar.visible = false
yumyum.navBar.visible = false
yumyum.navBar.opacity=0
yumyum.gesture.visible = false
yumyum.cheese.visible = false
yumyum.explorebtn.y = 1200
yumyum.shake.opacity = 0
yumyum.cards.visible = false
yumyum.cards.opacity = 0
yumyum.cards2.visible = false
yumyum.cards2.scale = 0
yumyum.cards2.opacity = 0
yumyum.cards2.rotationZ=5
yumyum.cards3.visible = false
yumyum.cards3.scale = 0
yumyum.cards3.opacity = 0
yumyum.cards3.rotationZ=5	
yumyum.cards4.visible = false
yumyum.cards4.scale = 0
yumyum.cards4.opacity = 0
yumyum.cards4.rotationZ=5
yumyum.choosebtns.visible = false
yumyum.cheesebtn.y = 1200
yumyum.back.visible = false	
yumyum.back.scale=0
yumyum.backtocard.visible = false	
yumyum.backtocard.scale=0
yumyum.backtocheese.visible = false	
yumyum.backtocheese.scale=0
yumyum.nexttosteps.visible = false
yumyum.ingrebar.visible = false
yumyum.ingrelist.visible = false
yumyum.fillbtn.visible = true
yumyum.btn11.opacity = 0
yumyum.btn22.opacity = 0
yumyum.btn33.opacity = 0
yumyum.btn44.opacity = 0
yumyum.btn55.opacity = 0
yumyum.btn11.scale = 0
yumyum.btn22.scale = 0
yumyum.btn33.scale = 0
yumyum.btn44.scale = 0
yumyum.btn55.scale = 0
yumyum.stepbar.visible = false
yumyum.backtoingre.visible = false
yumyum.bh.opacity = 0
yumyum.dh.opacity = 0
yumyum.ch.opacity = 0
yumyum.fh.opacity = 0
yumyum.share.visible=false

yumyum.left.scale=0
yumyum.right.scale=0
yumyum.ba.scale=0
yumyum.left.animate
	properties: 
		scale:1
	delay: 0.3
yumyum.right.animate
	properties: 
		scale:1
	delay: 0.5
yumyum.ba.animate
	properties: 
		scale:1
yumyum.title.scale=0
yumyum.title.animate
	properties: 
		scale: 1
	time: 3

yumyum.logo.animate
	properties: 
		opacity: 0
		y:200
	delay: 3.5
yumyum.title.animate
	properties: 
		opacity: 0
		y:400
	delay: 3.45
bg.animate
	properties:
		blur: 15
	delay: 3.5

intro = new PageComponent
	width: Screen.width, height: Screen.height
	opacity: 0
	blur: 15
	scrollVertical: false
intro.center()
intro.animate
	properties: 
		opacity: 1
		blur: 0
	delay: 3.6

allIndicators = []	
amount = 4
		
intro1 = new Layer 
	backgroundColor: "transparent", 
	image: "images/5.jpg"
	width: Screen.width, height: Screen.height
	superLayer: intro.content	
	
chooselayer1 = new Layer
	backgroundColor: "transparent"
	y:200
	width: Screen.width
	superLayer: intro1
chooselayer1.html = "<h2 style='color:#ffffff;text-align:center;'>Choices made wise</h2><br/><p style='color:#ffffff;text-align:center;'>simple food catagories for you</p>"
# 
# chooselayer2 = new Layer
# 	superLayer: intro1
# 	image: "images/1.png"
# 	x:170
# 	y:150
# 	width:254
# 	height: 279
# chooselayer3 = new Layer
# 	superLayer: intro1
# 	image: "images/2.png"
# 	x:370
# 	y:170
# 	width:257
# 	height: 260	
# chooselayer4 = new Layer
# 	superLayer: intro1
# 	image: "images/3.png"
# 	x:235
# 	y:380
# 	width:144
# 	height: 278	
# chooselayer5 = new Layer
# 	superLayer: intro1
# 	image: "images/4.png"
# 	x:360
# 	y:390
# 	width:232
# 	height: 234
# 
intro2 = new Layer 
	backgroundColor: "transparent", 
	width: Screen.width, height: Screen.height,
	image: "images/10.jpg"
	x: 750, superLayer: intro.content
	
cardlayer1 = new Layer
	y:200
	backgroundColor: "transparent"
	width: Screen.width
	superLayer: intro2
cardlayer1.html = "<h2 style='color:#ffffff;text-align:center;'>Easy and healthy recipes</h2><br/><p style='color:#ffffff;text-align:center;'>as fresh as just from the farm</p>"
# cardlayer2 = new Layer
# 	superLayer: intro2
# 	width: 500
# 	height: 500
# 	y:200
# 	image: "images/card.svg"
# cardlayer2.centerX()

intro3 = new Layer 
	backgroundColor: "transparent", 
	width: Screen.width, height: Screen.height,
	image: "images/6.jpg"
	x: Screen.width*2, superLayer: intro.content

steplayer1 = new Layer
	y:200
	backgroundColor: "transparent"
	width: Screen.width
	superLayer: intro3
steplayer1.html = "<h2 style='color:#ffffff;text-align:center;'>Step by step</h2><br/><p style='color:#ffffff;text-align:center;'>cook every meal at your own pace</p>"
# steplayer2 = new Layer
# 	superLayer: intro3
# 	width: 400
# 	height: 450
# 	y:250
# 	image: "images/knife.svg"	
# steplayer2.centerX()	

intro4 = new Layer 
	backgroundColor: "transparent", 
	width: Screen.width, height: Screen.height,
	image:"images/7.jpg"
	x: Screen.width*3, superLayer: intro.content
sharelayer1 = new Layer
	y:200
	backgroundColor: "transparent"
	width: Screen.width
	superLayer: intro4
sharelayer1.html = "<h2 style='color:#ffffff;text-align:center;'>Share the yummy moment</h2><br/><p style='color:#ffffff;text-align:center;'>interact with your friends via food</p>"			
# sharelayer2 = new Layer
# 	superLayer: intro4
# 	width: 520
# 	height: 520
# 	y:200
# 	image: "images/share.svg"
# sharelayer2.centerX()	
intro5 = new Layer 
	backgroundColor: "transparent",
	image: "images/footer.png" 
	width: 630, height: 88
	y:1400
intro5.centerX()
intro5.animate
	properties: 
		y: 1200
		opacity: 1
	delay: 5

indicator1 = new Layer 
	backgroundColor: "#ffffff"
	width: 12, height: 12
	x: 0, y: 1334,opacity: 0.5,
	borderRadius: "50%",
indicator2 = new Layer 
	backgroundColor: "#ffffff"
	width: 12, height: 12
	x: 28, y: 1334,opacity: 0.5,
	borderRadius: "50%"
indicator3 = new Layer 
	backgroundColor: "#ffffff"
	width: 12, height: 12
	x: 28 *2, y: 1334,opacity: 0.5,
	borderRadius: "50%"	
indicator4 = new Layer 
	backgroundColor: "#ffffff"
	width: 12, height: 12
	x: 28 *3, y: 1334,opacity: 0.5,
	borderRadius: "50%"	
	
indicator1.animate
	properties: 
		y:1100
	delay:4.01
indicator2.animate
	properties: 
		y:1100
	delay:4.02
indicator3.animate
	properties: 
		y:1100
	delay:4.03
indicator4.animate
	properties: 
		y:1100
	delay:4.04

indicator1.x += (Screen.width / 2) - (12 * amount)
indicator2.x += (Screen.width / 2) - (12 * amount)
indicator3.x += (Screen.width / 2) - (12 * amount)
indicator4.x += (Screen.width / 2) - (12 * amount)



	# States
indicator1.states.add(default: {opacity: 0.5,scale:1,y:1100})
indicator2.states.add(default: {opacity: 0.5,scale:1,y:1100})
indicator3.states.add(default: {opacity: 0.5,scale:1,y:1100})
indicator4.states.add(default: {opacity: 0.5,scale:1,y:1100})

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
		properties: {scale: 0}
		curve: "spring", curveOptions: {tension: 100, friction: 50, velocity: 0, tolerance: 1}
			
	intro.previousPage.once Events.AnimationEnd, -> 
		this.scale = 1
		
menubgd = new Layer
	backgroundColor: "#D0021B"
	borderRadius: "50%"
	width: 80
	height: 80
	x:750
	y:0
menu = new Layer
	image: "images/mypg.png"
	borderRadius: 50
	width: 80
	height: 80
	x:630
	y:64
	scale: 1
menulist = new Layer
	image: "images/menulist.png"
	height:758
	width:356
	x:238
	y:234
menulist.opacity=0
menuclose = new Layer
	image: "images/mypgclose.png"
	borderRadius: 50
	width: 70
	height: 70
	x:630
	y:64
	scale: 0
menu.scale=0
albummenu = new Layer 
	width: 350, height:100
	y:452, x:250
	backgroundColor:"transparent"
albummenu.visible=false
intro5.on Events.Click, ->
	intro.animate
		properties: 
			scale: 2
			opacity: 0
			blur: 20
			brightness: 50
	intro.visible=false
	allIndicators.visible=false
	indicator1.animate
		properties: 
			opacity: 0
			y:1334
	indicator2.animate
		properties: 
			opacity: 0
			y:1334
	indicator3.animate
		properties: 
			opacity: 0
			y:1334			
	indicator4.animate
		properties:
			opacity: 0 
			y:1334				
			
	intro5.animate
		properties: 
			y:1334
	bg.animate
		properties: 
			blur: 0
	yumyum.tags.animate
		properties:
			opacity:1
	yumyum.statusBar.visible = true
	menu.animate
		properties: 
			scale: 1
	
	menu.on Events.Click, ->
		cookmenu.visible=true
		albummenu.visible=true
		menulist.animate
			properties: 
				opacity: 1
			delay:0.3
		menu.animate
			properties:
				scale:0
		menuclose.animate
			properties:
				scale:1
		menubgd.animate
			properties:
				x:100
				y:-500
				borderRadius:0
				width:1500
				height:2200
				opacity:0.75
		yumyum.plate.animate
			properties:
				scale:1.1
				blur:10
				brightness:50
	menuclose.on Events.Click, ->
		cookmenu.visible=false
		albummenu.visible=false
		menulist.animate
			properties: 
				opacity: 0
		menuclose.animate
			properties:
				scale:0
		menu.animate
			properties:
				scale:1
		menubgd.animate
			properties:
				borderRadius: "50%"
				width: 80
				height: 80
				x:750
				y:0
			curve: "linear"
			time: 0.2
		yumyum.plate.animate
			properties:
				scale:1
				blur:0
				brightness:100	
	cookmenu.on Events.Click, ->
		cookmenu.visible=false
		albummenu.visible=false
		menulist.animate
			properties: 
				opacity: 0
		menuclose.animate
			properties:
				scale:0
		menu.animate
			properties:
				scale:1
		menubgd.animate
			properties:
				borderRadius: "50%"
				width: 80
				height: 80
				x:750
				y:0
			curve: "linear"
			time: 0.2
		yumyum.plate.animate
			properties:
				scale:1
				blur:0
				brightness:100	
		yumyum.tags.visible=true
		yumyum.tags.opacity=1	
		yumyum.explorebtn.visible=true
		yumyum.explorebtn.opacity=1
		yumyum.albums.visible=false
		yumyum.albumtitle.visible=false
	
	albummenu.on Events.Click, ->
		cookmenu.visible=false
		albummenu.visible=false
	
		menulist.animate
			properties: 
				opacity: 0
		menuclose.animate
			properties:
				scale:0
		menu.animate
			properties:
				scale:1
		menubgd.animate
			properties:
				borderRadius: "50%"
				width: 80
				height: 80
				x:750
				y:0
			curve: "linear"
			time: 0.2
		yumyum.plate.animate
			properties:
				scale:1
				blur:0
				brightness:100	
		yumyum.tags.visible=false	
		yumyum.explorebtn.visible=false
		yumyum.albums.visible=true
		yumyum.albumtitle.visible=true
		yumyum.albumtitle.opacity=1
		yumyum.albumtitle.y=26
	yumyum.chinese.on Events.Click, ->
		yumyum.shake.states.switch("hide")
		yumyum.shake.animate
			properties:
				y:950
		yumyum.explorebtn.states.switch("show")
		yumyum.ch.states.switch("show")
	
	yumyum.beverage.on Events.Click, ->
		yumyum.bh.states.next("show","hide")
	
	yumyum.fishes.on Events.Click, ->
		yumyum.fh.states.next("show","hide")
	
	yumyum.desserts.on Events.Click, ->
		yumyum.dh.states.next("show","hide")			
	yumyum.explorebtn.on Events.Click, ->
		bg.animate
			properties:
					blur:15
		yumyum.choosebtns.visible = true
		menu.animate
			properties: 
				scale:0
		yumyum.explorebtn.states.next("show","hide")
		yumyum.tags.visible = false
		yumyum.tags.opacity = 0	
		yumyum.navBar.visible = true
		yumyum.navBar.animate
			properties:
				opacity:1
		yumyum.back.visible = true
		yumyum.back.animate
			properties:
				scale:1
			time: 0.1
		yumyum.cards.visible = true
		yumyum.cards.animate
			properties:
				x:42
				y:200
				opacity:1
				rotationZ:0
				scale:1
		yumyum.gesture.visible = true
		yumyum.tap.visible = false
		yumyum.gesture.opacity = 0
		yumyum.gesture.animate
			properties:
				opacity:1
			delay: 0.6
	yumyum.OK.on Events.Click, ->
		yumyum.gesture.visible = false
	yumyum.swipe.on Events.MouseMove, ->
		yumyum.gesture.visible = false
				
	yumyum.back.on Events.Click, ->
		menu.animate
			properties: 
				scale:1
	
		yumyum.navBar.visible=false
		yumyum.choosebtns.visible = false
		yumyum.swipe.visible = true
		yumyum.cards.animate
			properties:
				y:1400
				opacity:0
		yumyum.cards2.animate
			properties:
				y:1400
				opacity:0
	
		yumyum.cards3.animate
			properties:
				y:1400
				opacity:0
	
		yumyum.cards4.animate
			properties:
				y:1400
				opacity:0
		yumyum.tags.visible = true
		yumyum.tags.animate
			properties:
				opacity:1
			delay: 0.3
		yumyum.shake.states.switch("hide")
		yumyum.explorebtn.states.switch("show")
		bg.animate
			properties:
				blur:0
		yumyum.back.animate
			properties:
				scale:0
			curve: "linear"
			time: 0.1
	
	yumyum.cards.draggable = true
	yumyum.cards2.draggable = true
	yumyum.cards3.draggable = true
	yumyum.cards4.draggable = true
	
	
	yumyum.cards.draggable.constraints =
	    x: 0
	    y: 64
	    width: 750
	    height: 1334
	yumyum.cards2.draggable.constraints =
	    x: 0
	    y: 64
	    width: 800
	    height: 1400
	yumyum.cards3.draggable.constraints =
	    x: 0
	    y: 64
	    width: 800
	    height: 1400
	yumyum.cards4.draggable.constraints =
	    x: 0
	    y: 64
	    width: 800
	    height: 1400
	
	yumyum.cards.on Events.DragStart, ->
		yumyum.cards.animate
			properties:
				scale:1.1
				rotationZ:5
			time: 0.1
			
	yumyum.cards2.on Events.DragStart, ->
		yumyum.cards2.animate
			properties:
				scale:1.1
				rotationZ:5
			time: 0.1
	yumyum.cards3.on Events.DragStart, ->
		yumyum.cards3.animate
			properties:
				scale:1.1
				rotationZ:5
			time: 0.1		
	yumyum.cards4.on Events.DragStart, ->
		yumyum.cards4.animate
			properties:
				scale:1.1
				rotationZ:5
			time: 0.1
			
	yumyum.cards.on Events.Drag, ->
		yumyum.choosebtns.animate
			properties:
				opacity:0
		yumyum.cards2.visible = true
		yumyum.cards2.animate
			properties:
				scale:1
				rotationZ:0
				opacity:1		
	yumyum.cards2.on Events.Drag, ->
		yumyum.cards3.visible = true
		yumyum.cards3.animate
			properties:
				scale:1
				rotationZ:0
				opacity:1
			time: 0.1
	yumyum.cards3.on Events.Drag, ->
		yumyum.cards4.visible = true
		yumyum.cards4.animate
			properties:
				scale:1
				rotationZ:0
				opacity:1
			time: 0.1	
	yumyum.cards4.on Events.Drag, ->
		yumyum.cards.animate
			properties:
				scale:1
				rotationZ:0
				opacity:1
			time: 0.1	
	yumyum.cards.on Events.DragAnimationDidStart, ->
		yumyum.cards.states.next("hide","show")
		yumyum.cards2.states.next("show","hide")
		yumyum.choosebtns.animate
			properties:
				opacity:1
			delay: 0.15
	yumyum.cards2.on Events.DragAnimationDidStart, ->
		yumyum.cards2.states.next("hide","show")
		yumyum.cards3.states.next("show","hide")
	yumyum.cards3.on Events.DragAnimationDidStart, ->
		yumyum.cards3.states.next("hide","show")
		yumyum.cards4.states.next("show","hide")
	yumyum.cards4.on Events.DragAnimationDidStart, ->
		yumyum.cards4.states.next("hide","show")
		yumyum.cards.states.next("hide","show")
		
	yumyum.yes.on Events.Click, ->
		menu.animate
			properties: 
				scale:0
		yumyum.cards2.animate
			properties:
				y:1400
		yumyum.cards3.animate
			properties:
				y:1400
		yumyum.cards4.animate
			properties:
				y:1400
		yumyum.navBar.opacity=0
		yumyum.cardimg1.animate
			properties:
				x:0
				y:100
				scale:2.5
				brightness:50
		yumyum.cards.draggable = false
		yumyum.gesture.visible = true
		yumyum.swipe.visible = false
		yumyum.gesture.opacity = 0
		yumyum.gesture.animate
			properties:
				opacity:1
			delay: 0.6
		yumyum.tap.visible = true
		yumyum.cheese.visible = true
		yumyum.cheesebtn.states.switch("show")
		yumyum.back.visible = false
		yumyum.choosebtns.visible = false
		yumyum.backtocard.visible = true
		yumyum.backtocard.animate
			properties:
				scale:1
			time: 0.1
			
	yumyum.backtocard.on Events.Click, ->
		yumyum.choosebtns.visible = true
		yumyum.navBar.opacity=1
		yumyum.cheese.visible = false
		yumyum.backtocard.animate
			properties:
				scale:0
		yumyum.back.visible = true
		yumyum.back.animate
			properties:
				scale:1
				opacity:1
		yumyum.cardimg1.animate
			properties:
				x:0
				y:0
				scale:1
				brightness:100
		yumyum.cards.states.switch("show")
		yumyum.cards2.animate
			properties:
				y:1300
				opacity:1
			time: 0.1
		yumyum.cards3.animate
			properties:
				y:1300
				opacity:1
		yumyum.cards4.animate
			properties:
				y:1300
				opacity:1	
		yumyum.cards.draggable = true
		yumyum.cheesebtn.states.switch("hide")
	
	yumyum.roughcontents.on Events.Click, ->
		yumyum.cheese.animate
			properties:
				opacity:0
		yumyum.cardimg1.animate
			properties:
				blur:15
		yumyum.detailcontents.visible = true
		yumyum.detailcontents.opacity = 0
		yumyum.detailcontents.animate
			properties:
				opacity:1
	yumyum.detailcontents.on Events.Click, ->
		yumyum.detailcontents.animate
			properties:
				opacity:0
		yumyum.detailcontents.visible = false
		yumyum.cheese.animate
			properties:
				opacity:1
		yumyum.cardimg1.animate
			properties:
				blur:0
	
	yumyum.cookbtn.on Events.Click, ->
		yumyum.nexttosteps.visible = true
		yumyum.nexttosteps.scale = 0
		yumyum.nexttosteps.animate
			properties:
				scale:1
		yumyum.cheesebtn.states.switch("hide")
		yumyum.cheese.visible = false
		yumyum.cardimg1.animate
			properties:
				blur:15
		yumyum.ingrebar.visible = true
		yumyum.backtocheese.visible = true
		yumyum.backtocheese.animate
			properties:
				scale:1
		yumyum.ingrelist.visible = true
		cheesetomato.visible=true
		cheesetomato.opacity=0
		cheesetomato.animate
			properties: 
				opacity: 1
				y:140
		cheesetomato.bringToFront()
		yumyum.ingrelist.opacity = 0
		yumyum.ingrelist.y = 1200
		yumyum.ingrelist.animate
			properties:
				y:0
				opacity:1
	
	yumyum.backtocheese.on Events.Click, ->
		cheesetomato.visible=false
		yumyum.finishbtn.visible=false
		yumyum.nexttosteps.animate
			properties:
				scale:0
		yumyum.ingrelist.animate
			properties:
				y:1400
				opacity:0
		yumyum.cardimg1.animate
			properties:
				blur:0
		yumyum.cheese.visible = true
		yumyum.backtocheese.animate
			properties:
				scale:0
		yumyum.backtocard.animate
			properties:
				scale:1
		yumyum.cheesebtn.states.switch("show")
		yumyum.ingrebar.visible = false
				
	yumyum.btn1.on Events.Click, ->
		yumyum.btn1.animate
			properties:
				scale:0
		yumyum.btn11.animate
			properties:
				scale:1
				opacity:1
		yumyum.nb1.animate
			properties:
				opacity:0.5	
	yumyum.btn11.on Events.Click, ->
		yumyum.btn11.animate
			properties:
				scale:0
				opacity:0
		yumyum.nb1.animate
			properties:
				opacity:1
		yumyum.btn1.scale = 0			
		yumyum.btn1.animate
			properties:
				scale:1
	
	yumyum.btn2.on Events.Click, ->
		yumyum.btn2.animate
			properties:
				scale:0
		yumyum.btn22.animate
			properties:
				scale:1
				opacity:1
		yumyum.nb2.animate
			properties:
				opacity:0.5	
	yumyum.btn22.on Events.Click, ->
		yumyum.btn22.animate
			properties:
				scale:0
				opacity:0
		yumyum.nb2.animate
			properties:
				opacity:1
		yumyum.btn2.scale = 0			
		yumyum.btn2.animate
			properties:
				scale:1
	yumyum.btn3.on Events.Click, ->
		yumyum.btn3.animate
			properties:
				scale:0
		yumyum.btn33.animate
			properties:
				scale:1
				opacity:1
		yumyum.nb3.animate
			properties:
				opacity:0.5	
	yumyum.btn33.on Events.Click, ->
		yumyum.btn33.animate
			properties:
				scale:0
				opacity:0
		yumyum.nb3.animate
			properties:
				opacity:1
		yumyum.btn3.scale = 0			
		yumyum.btn3.animate
			properties:
				scale:1
	yumyum.btn4.on Events.Click, ->
		yumyum.btn4.animate
			properties:
				scale:0
		yumyum.btn44.animate
			properties:
				scale:1
				opacity:1
		yumyum.nb4.animate
			properties:
				opacity:0.5	
	yumyum.btn44.on Events.Click, ->
		yumyum.btn44.animate
			properties:
				scale:0
				opacity:0
		yumyum.nb4.animate
			properties:
				opacity:1
		yumyum.btn4.scale = 0			
		yumyum.btn4.animate
			properties:
				scale:1
				
	yumyum.btn5.on Events.Click, ->
		yumyum.nextcircle.animate
			properties:
				scale:1
		yumyum.btn5.animate
			properties:
				scale:0
		yumyum.btn55.animate
			properties:
				scale:1
				opacity:1
		yumyum.nb5.animate
			properties:
				opacity:0.5	
	
	yumyum.btn55.on Events.Click, ->
		yumyum.btn55.animate
			properties:
				scale:0
				opacity:0
		yumyum.nb5.animate
			properties:
				opacity:1
		yumyum.btn5.scale = 0			
		yumyum.btn5.animate
			properties:
				scale:1
	
	# Set-up ScrollComponent
	steppage = new PageComponent
		width: 464, height: 605
		y:260
		scrollHorizontal: false
	steppage.centerX()
	# Array that will store our layers
	allStepindis = []	
	amount = 5
	
	# Generate card layers
	stepg1 = new Layer 
		image: "images/step1.png", 
		width: 464, height: 605
		y: 0, superLayer: steppage.content	
	stepg2 = new Layer 
		image: "images/step2.png", 
		width: 464, height: 605
		y: Screen.height, superLayer: steppage.content
	stepg3 = new Layer 
		image: "images/step3.png", 
		width: 464, height: 605
		y: Screen.height*2, superLayer: steppage.content
	stepg4 = new Layer 
		image: "images/step5.png", 
		width: 464, height: 605
		y: Screen.height*3, superLayer: steppage.content
	stepg5 = new Layer 
		image: "images/step4.png", 
		width: 464, height: 605
		y: Screen.height*4, superLayer: steppage.content
	
	# step7 = new Layer
	# 	width: 402, height: 90
	# 	y:704*5+(604-190)
	# 	x:40
	# 	image: "images/finish.png"
	# 	superLayer: steppage.content 
	# step7.on Events.Click, ->
	# 	yumyum.navBar.visible=false
	# 	yumyum.finishbtn.animate
	# 		properties:
	# 			scale:0
	# 	steppage.animate
	# 		properties:
	# 			y:-500
	# 			opacity:0
	# 	yumyum.stepbar.visible = false
	# 	yumyum.backtoingre.visible=false
	# 	yumyum.backtosteps.visible=true	
	# 	yumyum.share.visible=true
	# 	yumyum.camera.scale=0
	# 	yumyum.camera.animate
	# 		properties:
	# 			scale:1
	# 	yumyum.sharebtn.y=1400
	# 	yumyum.sharebtn.animate
	# 		properties:
	# 			y:700
	# 	yumyum.sharetitle.opacity=0
	# 	yumyum.sharetitle.animate
	# 		properties:
	# 			opacity:1
	# 	yumyum.cards.animate
	# 		properties:
	# 			opacity:0			
	stepindi1 = new Layer 
		backgroundColor: "#fff"
		width: 12, height: 12
		y: 0, x: 700
		borderRadius: "50%", opacity: 0.2
	stepindi2 = new Layer 
		backgroundColor: "#fff"
		width: 12, height: 12
		y: 28, x: 700
		borderRadius: "50%", opacity: 0.2
	stepindi3 = new Layer 
		backgroundColor: "#fff"
		width: 12, height: 12
		y: 28*2, x: 700
		borderRadius: "50%", opacity: 0.2
	stepindi4 = new Layer 
		backgroundColor: "#fff"
		width: 12, height: 12
		y: 28*3, x: 700
		borderRadius: "50%", opacity: 0.2
	stepindi5 = new Layer 
		backgroundColor: "#fff"
		width: 12, height: 12
		y: 28*4, x: 700
		borderRadius: "50%", opacity: 0.2	
	
	
		# Stay centered regardless of the amount of cards
	stepindi1.y += (Screen.height / 2) - (12 * amount)
	stepindi2.y += (Screen.height / 2) - (12 * amount)
	stepindi3.y += (Screen.height / 2) - (12 * amount)
	stepindi4.y += (Screen.height / 2) - (12 * amount)
	stepindi5.y += (Screen.height / 2) - (12 * amount)
		# States
	stepindi1.states.add(active: {opacity: 1, scale:1.2})
	stepindi1.states.animationOptions = time: 0.5
	stepindi2.states.add(active: {opacity: 1, scale:1.2})
	stepindi2.states.animationOptions = time: 0.5	
	stepindi3.states.add(active: {opacity: 1, scale:1.2})
	stepindi3.states.animationOptions = time: 0.5	
	stepindi4.states.add(active: {opacity: 1, scale:1.2})
	stepindi4.states.animationOptions = time: 0.5	
	stepindi5.states.add(active: {opacity: 1, scale:1.2})
	stepindi5.states.animationOptions = time: 0.5	
		# Store indicators in our array
	allStepindis.push(stepindi1, stepindi2, stepindi3, stepindi4, stepindi5)
	
	# Set indicator for current page
	current = steppage.horizontalPageIndex(steppage.currentPage)
	allStepindis[current].states.switch("active")
	
	# Define custom animation curve for page switches
	steppage.animationOptions = curve: "spring(200,22,0)"
	
	# Update indicators
	steppage.on "change:currentPage", ->
		stepindi1.states.switch("default") for stepindi1 in allStepindis
		stepindi2.states.switch("default") for stepindi2 in allStepindis
		stepindi3.states.switch("default") for stepindi3 in allStepindis
		stepindi4.states.switch("default") for stepindi4 in allStepindis
		stepindi5.states.switch("default") for stepindi5 in allStepindis
		current = steppage.horizontalPageIndex(steppage.currentPage)
		allStepindis[current].states.switch("active")
		
		# Animation of pages fading out
		steppage.previousPage.animate 
			properties: {scale: 0.75}
			curve: "spring", curveOptions: {tension: 100, friction: 50, velocity: 0, tolerance: 1}
				
		steppage.previousPage.once Events.AnimationEnd, -> this.scale = 1
	
	steppage.visible = false
	stepindi1.visible = false
	stepindi2.visible = false
	stepindi3.visible = false
	stepindi4.visible = false
	stepindi5.visible = false
	
	yumyum.nexttosteps.on Events.Click, ->
		yumyum.finishbtn.visible=true
		yumyum.nextcircle.animate
			properties: 
				scale: 0
		steppage.visible=true
		stepindi1.visible = true
		stepindi2.visible = true
		stepindi3.visible = true
		stepindi4.visible = true
		stepindi5.visible = true
		steppage.animate
			properties:
				y:260
				opacity:1
		yumyum.ingrelist.animate
			properties:
				y:1400
				opacity:0
		yumyum.ingrebar.visible = false
		yumyum.stepbar.visible = true
		yumyum.nexttosteps.animate
			properties:
				scale:0
		yumyum.backtoingre.visible = true
		yumyum.finishbtn.animate
			properties:
				y:1000
				scale:1
			delay:2
		
	yumyum.backtoingre.on Events.Click, ->
		steppage.animate
			properties:
				y:1400
				opacity:0
		yumyum.backtoingre.visible = false
		yumyum.stepbar.visible = false
		yumyum.ingrebar.visible = true
		yumyum.ingrelist.animate
			properties:
				y:0
				opacity:1
		yumyum.nexttosteps.animate
			properties:
				scale:1
		yumyum.backtocheese.visible=true
		yumyum.finishbtn.animate
			properties:
				scale:0
				
	yumyum.sushi.visible=false
	
	yumyum.camera.on Events.Click, ->
				yumyum.sushi.visible=true
				yumyum.camera.animate
					properties: 
						scale: 0
				
	yumyum.finishbtn.on Events.Click, ->
		cheesetomato.visible=false
		stepindi1.opacity=0
		stepindi2.opacity=0
		stepindi3.opacity=0
		stepindi4.opacity=0
		stepindi5.opacity=0
	
		yumyum.navBar.visible=false
		yumyum.finishbtn.animate
			properties:
				scale:0
		steppage.animate
			properties:
				y:-500
				opacity:0
		yumyum.stepbar.visible = false
		yumyum.backtoingre.visible=false
		yumyum.backtosteps.visible=true	
		yumyum.share.visible=true
		yumyum.camera.scale=0
		yumyum.camera.animate
			properties:
				scale:1
		
		yumyum.sharebtn.y=1400
		yumyum.sharebtn.animate
			properties:
				y:700
		yumyum.sharetitle.opacity=0
		yumyum.sharetitle.animate
			properties:
				opacity:1
		yumyum.cards.animate
			properties:
				opacity:0
		yumyum.cards.visible=false
	yumyum.backtosteps.on Events.Click, ->
		yumyum.cards.visible=true
		yumyum.cards.animate
			properties:
				opacity:1
		steppage.visible=true
		steppage.animate
			properties:
				y:260
				opacity:1
		yumyum.stepbar.visible = true
		yumyum.backtosteps.visible=false
		yumyum.backtoingre.visible = true
		yumyum.finishbtn.animate
			properties:
				scale:1
		yumyum.share.visible=false
	yumyum.loading.scale=0
	yumyum.published.scale=0
	yumyum.publish.on Events.Click, ->
		yumyum.albumtitle.visible=true
		yumyum.albumtitle.opacity=0
		yumyum.albumtitle.animate
			properties: 
				opacity: 1
				y:26
			delay: 2
		yumyum.publishtext.animate
			properties:
				scale:0
				opacity:0
		yumyum.loading.animate
			properties:
				scale:1
			time: 0.1
		yumyum.loading.animate
			properties:
				rotation: 360*3
			repeat: 3
			time: 1
			curve: "linear"
			
		menu.animate
			properties: 
				scale:1
			delay:2
		yumyum.albums.visible=true
		yumyum.albums.opacity=0
		yumyum.albums.animate
			properties: 
				opacity: 1
			delay: 2
		yumyum.sushi.opacity=0
		yumyum.sushi.animate
			properties: 
				opacity: 1
			delay:2.2

	yumyum.loading.on Events.AnimationEnd, ->
		yumyum.loading.animate
			properties:
				scale:0
				opacity:0
			time: 0.1
		yumyum.published.animate
			properties:
				scale:1
			time: 0.1
	yumyum.published.on Events.AnimationStop, ->
		yumyum.backtosteps.scale=0
		yumyum.backtoingre.scale=0
		yumyum.backbtn.scale=0
		yumyum.backtocard.scale=0
		yumyum.backtocheese.scale=0
	
		yumyum.sharetitle.animate
			properties:
				opacity:0
				scale:3
				blur:15
		yumyum.sushi.animate
			properties:
				x:-80
				y:-40
				scale:0.45
				opacity: 0
		yumyum.sharebtn.animate
			properties:
				opacity:0
				y:1400
		

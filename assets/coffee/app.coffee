#$( document ).ready()

$ document
	.ready ->
		$ '.content'
			.css { opacity: '1' }
			.slideDown 'show'
#			.fadeIn 'show'



# ==============================
# BackgroundResponse constructor
# ==============================
class BackgroundResponse
	constructor: ( @config ,@selector ) ->
#=============
# Cache
#=============
		@Cache = ->
			@doc = document
			@num = '.5'
			@backgroundEl
			@selector = @doc.querySelectorAll( @selector )[@config]
			return
		#=============
		# Events
		#=============

		#=============
		# Publick
		#=============

		###
		init method @init
		params default 0.5 change -> @changeOpacity
		###
		@init = ->
			do @Cache
			do @__getSelector
			do @__setStyle
			do @__getHeight
			@__bindResize @
			@__bindLoad @
			### RETURN THIS @###
			@

		@update = ->
			@backgroundEl.style.height = do @__getHeight

		@path = ( path ) ->
			@backgroundEl.style.backgroundImage = "url(#{path})"

		@changeOpacity = ( change ) ->
			@num = change

		@animate = ->
			@backgroundEl.style.opacity = "#{@num}"
			@backgroundEl.style.width = "100%"
# console.log opacitynum
# return

#=============
# Private
#=============
	__getSelector: ->
		@attr           = @selector.getAttribute 'class'
		@backgroundEl   = @doc.createElement 'div'
		@backgroundEl.setAttribute 'id', "#{@attr}-BackgroundResponse_inner#{@config}"
		@selector.insertBefore @backgroundEl, @selector.children[0]
		return

	__setStyle: ->
		@styleBackgroundEl = @backgroundEl.style
		@styleBackgroundEl.backgroundPosition   = "center 0"
		@styleBackgroundEl.backgroundSize       = 'cover'
		@styleBackgroundEl.overflow             = 'hidden'
		@styleBackgroundEl.position             = 'absolute'
		@styleBackgroundEl.backgroundRepeat     = 'no-repeat'
		@styleBackgroundEl.width                = '0%'
		@styleBackgroundEl.height               = '100%'
		@styleBackgroundEl.margin               = 'auto'
		@styleBackgroundEl.top                  = '50%'
		@styleBackgroundEl.left                 = '50%'
		@styleBackgroundEl.transform            = 'translate(-50%,-50%)'
		@styleBackgroundEl.transition           = 'all 1.4s cubic-bezier(0.4, 0, 0.47, 1.24)'
		@styleBackgroundEl.opacity              = '0'
		@selector.style.position                = 'relative'
		@selector.style.overflow                = 'hidden'
		@selector.style.boxSizing               = 'border-box'
		# @selector.style.padding                 = '0'
		return


	__getHeight: ->
		@selector.clientHeight
	###getComputedStyle(@selector).height #@padding###

	__bindResize: ( __bind ) ->
		window.addEventListener 'resize' ,->
			do __bind.update
			return

	__bindLoad: ( __bind ) ->
		window.addEventListener 'load' ,->
			do __bind.update
			do __bind.animate
			return

	__bindCreate: ( __bind ) ->
		@selector.addEventListener 'create' ,->
			do __bind.update






backgrou = new BackgroundResponse  0 ,'.preview'

do backgrou.init

backgrou.changeOpacity 1

backgrou.path 'http://wisdom.yoga/wp-content/uploads/2017/01/mantra-meditation-self-realization-848.jpg'

# block = document.querySelectorAll '.block'
# for x of block
# 	block[x].addEventListener 'click' ,->

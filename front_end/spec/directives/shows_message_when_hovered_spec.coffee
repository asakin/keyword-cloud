describe "directive: shows-message-when-hovered", ->
  beforeEach -> module('app')

  beforeEach inject ($rootScope, $compile) ->
    @directiveMessage = 'ralph was here'
    @html = "<div shows-message-when-hovered message='#{@directiveMessage}'></div>"
    @scope = $rootScope.$new
    @scope.message = @originalMessage = 'things are looking grim'
    @elem = $compile(@html)(@scope)

  describe "when a user mouses over the element", ->
    it "sets the message on the scope to the message attribute of the element", ->
      @elem.triggerHandler('mouseenter')
      expect(@scope.message).toBe(@directiveMessage)

  describe "When a user mouse leaves the element", ->
    it "restores the message to the original", ->
      @elem.triggerHandler('mouseleave')
      expect(this.scope.message).toBe(@originalMessage)

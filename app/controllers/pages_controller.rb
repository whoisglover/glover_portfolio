class PagesController < ApplicationController
  def index
    @time = Time.now
    hellos = ["Hello", "Bonjour", "Cześć", "Ciao", "Hola", "你好", "Aloha", "Salut", "Hi", "Hi there", "Hello"]
    actions = ["let's get building", "let's get moving", "let's learn together", "let's change the world", "let's build something beautiful", "let's make something meaningful", "let's shake things up"]
    @greeting = hellos[rand(hellos.length)]
    @action = actions[rand(actions.length)]
  end
end

class WelcomeController < ApplicationController
  def index
    render inertia: 'Welcome', props: {
      name: 'World'
    }
  end
end

# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @post = Post.all
  end
end

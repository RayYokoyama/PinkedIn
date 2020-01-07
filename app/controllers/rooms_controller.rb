class RoomsController < ApplicationController
before_action :authenticate_user! # Deviseのログイン確認

  def show
    @messages = Message.all
  end
end

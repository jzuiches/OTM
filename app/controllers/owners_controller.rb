class OwnersController < ApplicationController

  def index

    @owners = get_owners
  end

  def show
  end


  private

  def get_owners
    Owner.all
  end



end

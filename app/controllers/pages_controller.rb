class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def something
    @sth = params[:sth]
    @another_one = params[:another_one]
  end
end

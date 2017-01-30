class IchipostsController < ApplicationController


  def new
    @ichipost = Ichipost.new
  end


  def create
    @ichipost = Ichipost.new(ichipost_params)
    if @ichipost.save
      redirect_to root_path
    else
      render 'new'
    end

  end





      private


      def ichipost_params
          params.require(:ichipost).permit(:content)
      end


end

class IchipostsController < ApplicationController


  def new
    @ichipost = Ichipost.new
  end




  def create
    @ichipost = current_user.ichiposts.build(ichipost_params)
    if @ichipost.save
      redirect_to root_url
    else
      render 'pages/home'
    end
  end





      private


      def ichipost_params
          params.require(:ichipost).permit(:content)
      end


end

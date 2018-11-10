class StocksController < ApplicationController 
    def search()
        if(!params[:stock].present?())
            # flash[:danger] = "You have entered an empty search string"
            # Below is for ajax request handling
            flash.now[:danger] = "You have entered an empty search string"    
            # redirect_to(my_portfolio_path()) 
        else          
            @stock = Stock.new_from_lookup(params[:stock])
            flash.now[:danger] = "You have entered an incorrect symbol" unless(@stock)
            # render(json: @stock) # For checking
            # render("users/my_portfolio")
            # Prior to rails 5, above and then write seperate JS
            # render(partial: "users/result")
        end
        # After ajax all handling in below partial js then view 
        respond_to() do |format|
            format.js() {render(partial: "users/result")}
        end 
    end
end 
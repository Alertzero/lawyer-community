class SearchesController < ApplicationController
    
    def show
        @search = Search.find(params[:id])
    end 

    def new
        @search = Search.new
        @first_name = Lawyer.distinct.pluck(:first_name)
        @last_name = Lawyer.distinct.pluck(:last_name)
        @address = Lawyer.distinct.pluck(:address)
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end 

    private

    def search_params
        params.require(:search).permit(:first_name, :last_name, :address)
    end 

end

class PublicController < ApplicationController

    def index
        @questions = Question.includes([:client]).limit(5)
        #@posts = Post.limit(20).sort_by{|p| p.score}.reverse
    end

end

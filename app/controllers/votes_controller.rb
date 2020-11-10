class VotesController < ApplicationController

before_action :find_article
before_action :find_vote, only: [:destroy]

    def create
    if !vote_exists?
            @vote = current_user.votes.create(article_id: params[:article_id])
            flash[:notice] = 'Thank you for voting!'
        else
            flash[:alert] = 'You are prohibited from voting:error!'
        end
            redirect_to @article
    end

    def destroy
        if vote_exists?
            @vote.destroy
            flash[:notice] = 'You destroyed this article!'
        else
            flash[:alert] = 'You are prohibited from destroying this article!'
        end
    end

    def find_article
        @article = Article.find(params[:article_id])
    end

    def vote_exists?
        Vote.where(user_id: current_user.id, article_id: params[:article_id]).exists?
    end

    def find_vote
        @vote = @article.votes.find(params[:id])
    end 

end


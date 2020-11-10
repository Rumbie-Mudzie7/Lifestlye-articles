module VotesHelper
    def vote_or_Unvote(article)
        vote = Vote.find_by(user: current_user, article: article)
        
        if vote
            link_to 'UnVote', vote_path(id: vote.id, article_id: article.id), method: :delete
        else
            link_to 'Vote', votes_path(article.id), remote: true, method: :post
        end
    end 
end

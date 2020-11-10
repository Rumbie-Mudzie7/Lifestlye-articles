module VotesHelper
    def vote_or_Unvote(article)
        vote = Vote.find_by(user: current_user, article: article)
        
        if vote
        link_to 'Vote', article_vote_path(id: vote.id, article_id: article.id), method: :delete
        else
        link_to 'UnVote', article_votes_path(article.id), remote: true, method: :post
        end
        end 
end

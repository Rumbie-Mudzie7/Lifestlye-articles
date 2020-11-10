module VotesHelper
    def vote_or_unvote(article)
        vote = Vote.find_by(user: current_user, article: article)
        
        if vote
            link_to 'UnVote', article_vote_path(id: vote.id, article_id: article.id), method: :delete, class: "btn btn-primary"
        else
            link_to 'Vote', article_votes_path(article.id), remote: true, method: :post, class: "btn btn-danger"
        end
    end 
end

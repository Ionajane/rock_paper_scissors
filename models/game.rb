class Game

    def compare(user1, user2)
      if user1 == "rock" && user2 == "paper"
        return "PLAYER 2 WINS"
        # return_string = "player 2 wins"
        #PAPER WINS AGAINST ROCK
      elsif user1 == "paper" && user2 == "rock"
        return "PLAYER 2 WINS"
        #PAPER WINS AGAINST ROCK
      elsif user1 == "rock" && user2 == "scissors"
        return_string = "PLAYER 1 WINS"
        #ROCK WINS AGAINST SCISSORS
      elsif user1 == "scissors" && user2 == "rock"
        return "PLAYER 2 WINS"
        #ROCK WINS AGAINST SCISSORS
      elsif user1 == "paper" && user2 == "scissors"
        return "PLAYER 2 WINS"
        #SCISSORS WINS AGAINST PAPER
      elsif user1 == "scissors" && user2 == "paper"
        return_string = "PLAYER 1 WINS"
        #SCISSORS WIN AGAINST PAPER
      else
        return "It's a draw..."
      end
    end

end

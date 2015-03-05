
get '/startround' do
  erb :card
end

get '/card/:id' do
  @card = Card.find_by(id: params[:id])
  erb :'card'
end

# post '/answer/:id' do
#   round = session[:round]
#   @round = round
#   guess = Guess.create(card_id: params[:id], round_id: round.id)
#   card = Card.find_by(id: params[:id])
#   if params["answer"].downcase == card.answer.downcase
#     guess.update(correctness: true)
#     @correct = "Correct!"
#   else
#     @correct = "Wrong!"
#   end
#   if round.cards_correct >= round.deck.cards.count
#     erb :'round/stats'
#   elsif round.cards_incorrect >= round.deck.cards.count
#     erb :'round/stats'
#   else
#     @answer = card.answer
#     @next_card = session[:round].random_remaining_card
#     erb :'round/answer'
#   end
# end
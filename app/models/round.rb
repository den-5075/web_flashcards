class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :deck
  has_many :guesses

  def random_cards
  end

  def correct_cards
  end

  def incorrect_cards
  end

end

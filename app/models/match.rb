class Match < ApplicationRecord

  belongs_to :challenger
  belongs_to :challengee

  def user_stats
  total_games_as_challenger = Match.where(users.user_id = matches.challenger).count
# avg will be counted toward how many total games played and how many show true at challengerOutcome
  total_games_as_challengee = Match.where(users.user_id = matches.challengee).count
# avg will be counted toward how many total games played and how many show false at challengerOutcome
  wins_as_challenger = Match.select(matches.challengerOutcome).where(challengerOutcome = true)

  wins_as_challengee = Match.select(matches.challengerOutcome).where(challengerOutcome = false)


  all_games_vs_all_won = false
# then avg between the two will be the true avg.
  end


end

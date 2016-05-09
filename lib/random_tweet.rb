Twittbot::BotPart.new :random_tweet do
  # Every 15 minutes...
  $i = 0
  every 2, :minutes do


    bot.tweet @config[:tweets].at($i)
    $i +=1
  end

  ## Uncomment the next few lines if you want to add new tweets to the tweet
  ## list on the fly using direct messages.
  ##
  ## Example usage:
  ## !atwt Tweet text
  #cmd :atwt do |args|
  #  # adds args (usually the tweet text) to the list of random tweets unless
  #  # args already is in the list
  #  @config[:tweets] << args unless @config[:tweets].include? args
  #end
  #
  ## Auto-save!  \o/
  #every 1, :hour do
  #  save_config
  #end
end
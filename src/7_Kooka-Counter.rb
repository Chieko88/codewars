# Hint
# The trick to counting kookaburras is to listen carefully
# The males sound like HaHaHa...
# The females sound like hahaha...
# And they always alternate male/female
# Examples
# ha = female => 1
# Ha = male => 1
# Haha = male + female => 2
# haHa = female + male => 2
# hahahahaha = female => 1
# hahahahahaHaHaHa = female + male => 2
# HaHaHahahaHaHa = male + female + male => 3

def kooka_counter(laughing)
  #your code here
  if laughing.empty?
    return 0
  end

  birds = laughing.split("a")
  current_bird = birds[0]
  count = 1
  birds.each do |c|
    if c != current_bird
      count += 1
      current_bird = c
    end
  end
  count
end

def kooka_counter(laughing)
  laughing.delete! "a"
  laughing.squeeze!
  laughing.length
end

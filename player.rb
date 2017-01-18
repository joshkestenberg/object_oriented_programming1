class Player

  def initialize(name)
    @name = name
    @lives = 5
    @gold_coins = 0
    @score = 0
    @health_points = 10
  end

  def do_battle
    @health_points -=1
    @lives -=1 if @health_points == 0
    @health_points = 10 if @health_points == 0
    restart if @lives == 0
  end

  def restart
    @lives = 5
    @goldcoins = 0
    @score = 0
    @health_points = 10
  end

  def level_up
    @lives += 1
  end

  def collect_treasure(sum)
    @gold_coins += sum
    @score += (@gold_coins / 10) if @gold_coins >= 10
    @gold_coins = (@gold_coins % 10) if @gold_coins >=10 #wraps count to include coins over 10
    @gold_coins = 0 if @gold_coins == 10
    level_up if @score >= 10
    @score = 0 if @score >= 10


    #below is the beginning of an attempt at getting a counter that doesn't reset

    #@score = @gold_coins / 10
    #level_up if @score % 10 == 0 &&
    #count = 0
    #if score % 10 = 0
    #  score = count
  end

end

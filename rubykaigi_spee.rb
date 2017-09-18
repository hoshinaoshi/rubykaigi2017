rng = Random.new(0xC0FFEE)
[32, *97 ..122, *65 ..90].tap do |c|
  [51, 25, 133, 50, 66, 91, 93, 137, 31, 96, 105, 55, 108, 8, 29, 68, 319, 97, 37, 48, 13, 51, 14, 62, 6, 5].map do |g|
    g.times.map { c.sample(random: rng) }.last.chr
  end.join.display.__send__(:puts, ?!)
end

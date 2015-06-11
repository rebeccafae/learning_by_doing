#!/usr/bin/env ruby

def ask_question(question)
  puts "Give me #{question}:"
  gets.chomp
end

adj = ask_question('an adjective')
adj_2 = ask_question('another adjective')
noun = ask_question('a noun')
noun_2 = ask_question('another noun')
plural_noun = ask_question('a plural noun')
game = ask_question('a game')
plural_noun_2 = ask_question('abother plural noun')
verb_ing = ask_question("a verb ending in 'ing'")
verb_ing_2 = ask_question("another verb ending in 'ing'")
plural_noun_3 = ask_question('another plural noun')
verb_ing_3 = ask_question("another verb ending in 'ing'")
noun_3 = ask_question('another noun')
plant = ask_question('a plant')
part_of_the_body = ask_question('a part of the body')
place = ask_question('a place')
verb_ing_4 = ask_question("another verb ending in 'ing'")
adj_3 = ask_question('another adjective')
number = ask_question('a number')
plural_noun_4 = ask_question('another plural noun')

puts <<END_OF_MADLIB
A vacation is when you take a trip to some #{adj} place
with your #{adj_2} family. Usually you go to some place
that is near a/an #{noun} or up on a/an #{noun_2}.
A good vacation place is one where you can ride #{plural_noun}
or play #{game} or go hunting for #{plural_noun_2}. I like
to spend my time #{verb_ing} or #{verb_ing_2}.
When parents go on a vacation, they spend their time eating
three #{plural_noun_3} a day, and fathers play golf, and mothers
sit around #{verb_ing_3}. Last summer, my little brother
fell in a/an #{noun_3} and got poison #{plant} all
over his #{part_of_the_body}. My family is going to go to (the)
#{place}, and I will practice #{verb_ing_4}. Parents
need vacations more than kids because parents are always very
#{adj_3} and because they have to work #{number}
hours every day all year making enough #{plural_noun_4} to pay
for the vacation.
END_OF_MADLIB
